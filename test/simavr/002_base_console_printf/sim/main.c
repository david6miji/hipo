#include <unistd.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <libgen.h>

#include <pthread.h>

#include <simavr/sim_avr.h>
#include <simavr/avr_ioport.h>
#include <simavr/sim_elf.h>
#include <simavr/sim_hex.h>
#include <simavr/sim_gdb.h>

const char 	*fname 	=  "fw_atmega2560_console_printf.axf";
avr_t 		*avr 	= NULL;

int main(int argc, char **argv) {

	elf_firmware_t f;

	printf( ">>This is an example of using console and printf in avr for simavr\n");
	
	elf_read_firmware(fname, &f);
	printf("firmware %s freq=%d mcu=%s\n", fname, (int)f.frequency, f.mmcu);
	
	avr = avr_make_mcu_by_name(f.mmcu);
	if (!avr) {
		fprintf(stderr, "%s: AVR '%s' not known\n", argv[0], f.mmcu);
		exit(1);
	}
	
	avr_init(avr);
	avr_load_firmware(avr, &f);
//	avr->log = LOG_OUTPUT;
	
	int state = cpu_Running;
	while ((state != cpu_Done) && (state != cpu_Crashed)){
		state = avr_run(avr);
	}	
	avr_terminate(avr);
	
	printf("Program is end\n");
}
