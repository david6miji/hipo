#include <avr/io.h>
#include <stdio.h>
#include <avr/interrupt.h>
#include <avr/eeprom.h>
#include <avr/sleep.h>
#include <util/delay.h>

#include <avr_mcu_section.h>
AVR_MCU(F_CPU, "atmega2560");
AVR_MCU_SIMAVR_CONSOLE(&GPIOR1);

int main()
{
	while(1){
		GPIOR1 = 'A';
		GPIOR1 = '-';
		GPIOR1 = 'Z';
		GPIOR1 = '\r';
		_delay_ms(1000);
		
	}
}

