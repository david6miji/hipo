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

const char 	*fname 	=  "fw_atmega2560_uart.axf";
avr_t 		*avr 	= NULL;

int main(int argc, char **argv) {

	elf_firmware_t f;

	printf( ">>hello! this is simulator main program.\n");
	
	printf("Firmware pathname is %s\n", fname);
	elf_read_firmware(fname, &f);
	printf("firmware %s f=%d mmcu=%s\n", fname, (int)f.frequency, f.mmcu);
	
	avr = avr_make_mcu_by_name(f.mmcu);
	if (!avr) {
		fprintf(stderr, "%s: AVR '%s' not known\n", argv[0], f.mmcu);
		exit(1);
	}
	
	printf("making struct of avr is success!\n");
	
	avr_init(avr);
	avr_load_firmware(avr, &f);
	
//	avr->log = LOG_OUTPUT;
	
	int state = cpu_Running;
	while ((state != cpu_Done) && (state != cpu_Crashed)){
		state = avr_run(avr);
	}	
	
	printf("Program is end\n");
}

