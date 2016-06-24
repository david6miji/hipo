#include <stdio.h>

// hipo 메인 루프
// SD 에 명령 로그와 저장을 한다. 

#include "Marlin.h"

bool Running = true;

static long gcode_N, gcode_LastN, Stopped_gcode_LastN = 0;

static char* current_command, *current_command_args;
static int cmd_queue_index_r = 0;
static int cmd_queue_index_w = 0;
static int commands_in_queue = 0;
static char command_queue[BUFSIZE][MAX_CMD_SIZE];

// Next Immediate GCode Command pointer. NULL if none.
const char* queued_commands_P = NULL;

static bool send_ok[BUFSIZE];

const char errormagic[] PROGMEM = "Error:";
const char echomagic[] PROGMEM = "echo:";
const char axis_codes[NUM_AXIS] = {'X', 'Y', 'Z', 'E'};

static int serial_count = 0;

/**
 * ***************************************************************************
 * ******************************** FUNCTIONS ********************************
 * ***************************************************************************
 */

void stop();

void get_available_commands();
void process_next_command();

void plan_arc(float target[NUM_AXIS], float* offset, uint8_t clockwise);

void ok_to_send() {
// @YYC  refresh_cmd_timeout();
// @YYC  if (!send_ok[cmd_queue_index_r]) return;
// @YYC  SERIAL_PROTOCOLPGM(MSG_OK);
// @YYC  #if ENABLED(ADVANCED_OK)
// @YYC    char* p = command_queue[cmd_queue_index_r];
// @YYC    if (*p == 'N') {
// @YYC      SERIAL_PROTOCOL(' ');
// @YYC      SERIAL_ECHO(*p++);
// @YYC      while (NUMERIC_SIGNED(*p))
// @YYC        SERIAL_ECHO(*p++);
// @YYC    }
// @YYC    SERIAL_PROTOCOLPGM(" P"); SERIAL_PROTOCOL(int(BLOCK_BUFFER_SIZE - movesplanned() - 1));
// @YYC    SERIAL_PROTOCOLPGM(" B"); SERIAL_PROTOCOL(BUFSIZE - commands_in_queue);
// @YYC  #endif
// @YYC  SERIAL_EOL;
}


void FlushSerialRequestResend() {
  //char command_queue[cmd_queue_index_r][100]="Resend:";
// @YYC  MYSERIAL.flush();
// @YYC  SERIAL_PROTOCOLPGM(MSG_RESEND);
// @YYC  SERIAL_PROTOCOLLN(gcode_LastN + 1);
  ok_to_send();
}




/**
 * Inject the next "immediate" command, when possible.
 * Return true if any immediate commands remain to inject.
 */
static bool drain_queued_commands_P() {
  if (queued_commands_P != NULL) {
    size_t i = 0;
    char c, cmd[30];
    strncpy_P(cmd, queued_commands_P, sizeof(cmd) - 1);
    cmd[sizeof(cmd) - 1] = '\0';
    while ((c = cmd[i]) && c != '\n') i++; // find the end of this gcode command
    cmd[i] = '\0';
    if (enqueue_and_echo_command(cmd)) {   // success?
      if (c)                               // newline char?
        queued_commands_P += i + 1;        // advance to the next command
      else
        queued_commands_P = NULL;          // nul char? no more commands
    }
  }
  return (queued_commands_P != NULL);      // return whether any more remain
}

/**
 * Record one or many commands to run from program memory.
 * Aborts the current queue, if any.
 * Note: drain_queued_commands_P() must be called repeatedly to drain the commands afterwards
 */
void enqueue_and_echo_commands_P(const char* pgcode) {
  queued_commands_P = pgcode;
  drain_queued_commands_P(); // first command executed asap (when possible)
}


/**
 * Once a new command is in the ring buffer, call this to commit it
 */
inline void _commit_command(bool say_ok) {
  send_ok[cmd_queue_index_w] = say_ok;
  cmd_queue_index_w = (cmd_queue_index_w + 1) % BUFSIZE;
  commands_in_queue++;
}

/**
 * Copy a command directly into the main command buffer, from RAM.
 * Returns true if successfully adds the command
 */
inline bool _enqueuecommand(const char* cmd, bool say_ok=false) {
  if (*cmd == ';' || commands_in_queue >= BUFSIZE) return false;
  strcpy(command_queue[cmd_queue_index_w], cmd);
  _commit_command(say_ok);
  return true;
}

void enqueue_and_echo_command_now(const char* cmd) {
  while (!enqueue_and_echo_command(cmd)) idle();
}

/**
 * Enqueue with Serial Echo
 */
bool enqueue_and_echo_command(const char* cmd, bool say_ok/*=false*/) {
  if (_enqueuecommand(cmd, say_ok)) {
    SERIAL_ECHO_START;
    SERIAL_ECHOPGM(MSG_Enqueueing);
    SERIAL_ECHO(cmd);
    SERIAL_ECHOLNPGM("\"");
    return true;
  }
  return false;
}


void gcode_line_error(const char* err, bool doFlush = true) {
  SERIAL_ERROR_START;
  serialprintPGM(err);
  SERIAL_ERRORLN(gcode_LastN);
  //Serial.println(gcode_N);
  if (doFlush) FlushSerialRequestResend();
  serial_count = 0;
}

inline void get_serial_commands() {
  static char serial_line_buffer[MAX_CMD_SIZE];
  static boolean serial_comment_mode = false;

  // If the command buffer is empty for too long,
  // send "wait" to indicate Marlin is still waiting.
  #if defined(NO_TIMEOUTS) && NO_TIMEOUTS > 0
    static millis_t last_command_time = 0;
    millis_t ms = millis();
    if (commands_in_queue == 0 && !MYSERIAL.available() && ELAPSED(ms, last_command_time + NO_TIMEOUTS)) {
      SERIAL_ECHOLNPGM(MSG_WAIT);
      last_command_time = ms;
    }
  #endif

  /**
   * Loop while serial characters are incoming and the queue is not full
   */
  while (commands_in_queue < BUFSIZE && MYSERIAL.available() > 0) {

    char serial_char = MYSERIAL.read();

    /**
     * If the character ends the line
     */
    if (serial_char == '\n' || serial_char == '\r') {

      serial_comment_mode = false; // end of line == end of comment

      if (!serial_count) continue; // skip empty lines

      serial_line_buffer[serial_count] = 0; // terminate string
      serial_count = 0; //reset buffer

      char* command = serial_line_buffer;

      while (*command == ' ') command++; // skip any leading spaces
      char* npos = (*command == 'N') ? command : NULL; // Require the N parameter to start the line
      char* apos = strchr(command, '*');

      if (npos) {

        boolean M110 = strstr_P(command, PSTR("M110")) != NULL;

        if (M110) {
          char* n2pos = strchr(command + 4, 'N');
          if (n2pos) npos = n2pos;
        }

        gcode_N = strtol(npos + 1, NULL, 10);

        if (gcode_N != gcode_LastN + 1 && !M110) {
          gcode_line_error(PSTR(MSG_ERR_LINE_NO));
          return;
        }

        if (apos) {
          byte checksum = 0, count = 0;
          while (command[count] != '*') checksum ^= command[count++];

          if (strtol(apos + 1, NULL, 10) != checksum) {
            gcode_line_error(PSTR(MSG_ERR_CHECKSUM_MISMATCH));
            return;
          }
          // if no errors, continue parsing
        }
        else {
          gcode_line_error(PSTR(MSG_ERR_NO_CHECKSUM));
          return;
        }

        gcode_LastN = gcode_N;
        // if no errors, continue parsing
      }
      else if (apos) { // No '*' without 'N'
        gcode_line_error(PSTR(MSG_ERR_NO_LINENUMBER_WITH_CHECKSUM), false);
        return;
      }

      // Movement commands alert when stopped
      if (IsStopped()) {
        char* gpos = strchr(command, 'G');
        if (gpos) {
          int codenum = strtol(gpos + 1, NULL, 10);
          switch (codenum) {
            case 0:
            case 1:
            case 2:
            case 3:
              SERIAL_ERRORLNPGM(MSG_ERR_STOPPED);
// @YYC              LCD_MESSAGEPGM(MSG_STOPPED);
              break;
          }
        }
      }

      // If command was e-stop process now
      if (strcmp(command, "M112") == 0) kill(PSTR(MSG_KILLED));

      #if defined(NO_TIMEOUTS) && NO_TIMEOUTS > 0
        last_command_time = ms;
      #endif

      // Add the command to the queue
      _enqueuecommand(serial_line_buffer, true);
    }
    else if (serial_count >= MAX_CMD_SIZE - 1) {
      // Keep fetching, but ignore normal characters beyond the max length
      // The command will be injected when EOL is reached
    }
    else if (serial_char == '\\') {  // Handle escapes
      if (MYSERIAL.available() > 0) {
        // if we have one more character, copy it over
        serial_char = MYSERIAL.read();
        if (!serial_comment_mode) serial_line_buffer[serial_count++] = serial_char;
      }
      // otherwise do nothing
    }
    else { // it's not a newline, carriage return or escape char
      if (serial_char == ';') serial_comment_mode = true;
      if (!serial_comment_mode) serial_line_buffer[serial_count++] = serial_char;
    }

  } // queue has space, serial has data
}



/**
 * Add to the circular command queue the next command from:
 *  - The command-injection queue (queued_commands_P)
 *  - The active serial input (usually USB)
 *  - The SD card file being actively printed
 */
void get_available_commands() {

  // if any immediate commands remain, don't get other commands yet
  if (drain_queued_commands_P()) return;

  get_serial_commands();

  #if ENABLED(SDSUPPORT)
    get_sdcard_commands();
  #endif
}


//-----------------------------------------------------------------------------------------------------------------
// hipo 메인 루프
// SD 에 명령 로그와 저장을 한다. 
// 처리 가능한 명령을 수행한다. 
// 히터 관리자를 호출한다. 
// 대기 관리자를 호출한다. 
// 정지점 매니저를 호출한다. 
// LCD 를 업데이트 한다. 
//-----------------------------------------------------------------------------------------------------------------
void loop() {

	printf( "CALL loop()\n" );

	if (commands_in_queue < BUFSIZE) get_available_commands();

//	#if ENABLED(SDSUPPORT)
//#error "HEY"
//   		card.checkautostart(false);
//	#endif

//  if (commands_in_queue) {

//    #if ENABLED(SDSUPPORT)

//      if (card.saving) {
//        char* command = command_queue[cmd_queue_index_r];
//        if (strstr_P(command, PSTR("M29"))) {
//          // M29 closes the file
//          card.closefile();
//          SERIAL_PROTOCOLLNPGM(MSG_FILE_SAVED);
//          ok_to_send();
//        }
//        else {
//          // Write the string from the read buffer to SD
//          card.write_command(command);
//          if (card.logging)
//            process_next_command(); // The card is saving because it's logging
//          else
//            ok_to_send();
//        }
//      }
//      else
//        process_next_command();
//
//    #else

//      process_next_command();

//    #endif // SDSUPPORT

//    commands_in_queue--;
//    cmd_queue_index_r = (cmd_queue_index_r + 1) % BUFSIZE;
//  }
//  checkHitEndstops();
//  idle();
}

void kill(const char* lcd_msg) {
// @YYC  #if ENABLED(ULTRA_LCD)
// @YYC    lcd_setalertstatuspgm(lcd_msg);
// @YYC  #else
// @YYC    UNUSED(lcd_msg);
// @YYC  #endif
// @YYC
// @YYC  cli(); // Stop interrupts
// @YYC  disable_all_heaters();
// @YYC  disable_all_steppers();
// @YYC
// @YYC  #if HAS_POWER_SWITCH
// @YYC   pinMode(PS_ON_PIN, INPUT);
// @YYC  #endif
// @YYC
// @YYC  SERIAL_ERROR_START;
// @YYC  SERIAL_ERRORLNPGM(MSG_ERR_KILLED);
// @YYC
// @YYC  // FMC small patch to update the LCD before ending
// @YYC  sei();   // enable interrupts
// @YYC  for (int i = 5; i--; lcd_update()) delay(200); // Wait a short time
// @YYC  cli();   // disable interrupts
// @YYC  suicide();
// @YYC  while (1) {
// @YYC    #if ENABLED(USE_WATCHDOG)
// @YYC      watchdog_reset();
// @YYC    #endif
// @YYC  } // Wait for reset
}


void idle(){
}


int main( int argc, char **argv ){

	printf( "hipo v1.0\n" );
	loop();

}

