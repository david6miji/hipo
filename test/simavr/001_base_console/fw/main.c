/*
	atmega88_uart_echo.c

	This test case enables uart RX interupts, does a "printf" and then receive characters
	via the interupt handler until it reaches a \r.

	This tests the uart reception fifo system. It relies on the uart "irq" input and output
	to be wired together (see simavr.c)
 */

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

