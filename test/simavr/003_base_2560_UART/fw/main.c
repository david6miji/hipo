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

/*
 * This demonstrate how to use the avr_mcu_section.h file
 * The macro adds a section to the ELF file with useful
 * information for the simulator
 */
#include <avr_mcu_section.h>
AVR_MCU(F_CPU, "atmega2560");
// tell simavr to listen to commands written in this (unused) register
// AVR_MCU_SIMAVR_COMMAND(&GPIOR0);
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


/*
volatile uint8_t cnt = 0;
volatile uint8_t done = 0;

static int uart_putchar(char c, FILE *stream)
{
	uint8_t startcnt;
	if (c == '\n')
		uart_putchar('\r', stream);
	loop_until_bit_is_set(UCSR3A, UDRE3);

	startcnt = cnt;
	UDR3 = c;
//	_delay_us(100);

	// Wait until we have received the character back
	while(!done && cnt == startcnt)
	{
		UDR1 = 'a';
		UDR1 = '\n';
		sleep_cpu();
	}

	UDR1 = 'b';
	UDR1 = '\n';

	_delay_us(1000);

	return 0;
}

static FILE mystdout = FDEV_SETUP_STREAM(uart_putchar, NULL,
                                         _FDEV_SETUP_WRITE);

volatile uint8_t bindex = 0;
uint8_t buffer[80];

ISR(USART3_RX_vect)
{
	UDR1 = 'c';
	UDR1 = '\n';

	uint8_t b = UDR3;
	GPIOR1 = b; // for the trace file
	buffer[bindex++] = b;
	buffer[bindex] = 0;
	cnt++;
	if (b == '\n')
		done++;
//	sleep_cpu();
}

int main()
{
	stdout = &mystdout;

	UCSR3C = (3 << UCSZ30); // 8 bits
	// see http://www.nongnu.org/avr-libc/user-manual/group__util__setbaud.html
#define BAUD 38400
#include <util/setbaud.h>
	UBRR3H = UBRRH_VALUE;
	UBRR3L = UBRRL_VALUE;
#if USE_2X
	UCSR3A |= (1 << U2X3);
#else
	UCSR3A &= ~(1 << U2X3);
#endif

	// enable receiver & transmitter
	UCSR3B |= (1 << RXCIE3) | (1 << RXEN3) | (1 << TXEN3);

	// this tells simavr to start the trace
	GPIOR0 = SIMAVR_CMD_VCD_START_TRACE;
	sei();
	printf("Hey there, this should be received back\n");
	loop_until_bit_is_set(UCSR3A, UDRE3);

	while (!done)
		sleep_cpu();

	cli();

	printf("Received: %s", buffer);

	// this quits the simulator, since interupts are off
	// this is a "feature" that allows running tests cases and exit
	sleep_cpu();
}

*/

