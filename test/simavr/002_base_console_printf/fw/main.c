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
	printf( "This is an example of using console and printf for simavr\n" );

	i = 0;
	while(1){
		printf( "i = %d\n", i );
		i++;
		_delay_ms(1000);
	}
}

