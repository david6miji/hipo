// typedef unsigned int size_t;

#define PSTR(s) \
	((const char *)(s)) 

#define strstr_P	strstr

extern unsigned char _SREG;
extern unsigned char _UBRRH;
extern unsigned char _UDRE;
extern unsigned char _UCSRA;
extern unsigned char _UDR;
extern unsigned char _RXC;
extern unsigned char _U2X;


#define PROGMEM
#define PGM_P		const char * 

#define strcpy_P	strcpy
#define strlen_P   strlen

#define SREG 	_SREG
#define UBRRH 	_UBRRH
#define UDRE 	_UDRE
#define UDR 		_UDR
#define RXC 		_RXC
#define UCSRA	_UCSRA 
#define U2X		_U2X

// inline void cli(){}
// inline unsigned long millis(){}

#define CRITICAL_SECTION_START
#define CRITICAL_SECTION_END

extern unsigned int pgm_read_byte_near(const char* addr);
extern char * 	strncpy_P (char *, const char *, size_t);

#define _BV(bit) \
	(1 << (bit)) 

#define pgm_read_byte(address_short) \
	pgm_read_byte_near(address_short) 


#include "language.h"


extern char * utoa(	unsigned int val,char * s,	int radix);
extern char * itoa(	int val,	char * s,	int radix);
extern char * ltoa(	long val,	char * s,	int radix);
extern char * ultoa(unsigned long val,	char * s,	int radix);
extern char * dtostrf(	double __val,	signed char __width,	unsigned char __prec,	char * __s);

