#include <avr/io.h>
#include <stdio.h>
#include <avr/interrupt.h>
#include <avr/eeprom.h>
#include <avr/sleep.h>
#include <util/delay.h>

#include <avr_mcu_section.h>
AVR_MCU(F_CPU, "atmega2560");
AVR_MCU_SIMAVR_CONSOLE(&GPIOR1);

static int console_putchar(char c, FILE *stream)
{
	if (c == '\n') GPIOR1 = '\r';
	else           GPIOR1 = c;
	return 0;
}

static FILE console_stdout = FDEV_SETUP_STREAM( 
	console_putchar, 
	NULL,
	_FDEV_SETUP_WRITE
);
int main()
{
	int i;
	
	stdout = &console_stdout;
	printf( "firmware is starting\n" );

	for( i = 0; i < 5; i++ ){
		printf( "i = %d\n", i );
		_delay_ms(1000);
	}
	
	printf( "firmware is done\n" );
	
	cli();
	sleep_cpu();
}

