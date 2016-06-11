#include <stdio.h>

// hipo 메인 루프
// SD 에 명령 로그와 저장을 한다. 

static char* current_command, *current_command_args;
static int 	cmd_queue_index_r = 0;
static int 	cmd_queue_index_w = 0;
static int 	commands_in_queue = 0;
static char 	command_queue[BUFSIZE][MAX_CMD_SIZE];

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

//  if (commands_in_queue < BUFSIZE) get_available_commands();

//  #if ENABLED(SDSUPPORT)
//    card.checkautostart(false);
//  #endif

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



int main( int argc, char **argv ){

	printf( "hipo v1.0\n" );
	loop();

}



