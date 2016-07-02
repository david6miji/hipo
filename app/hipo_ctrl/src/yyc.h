// typedef unsigned int size_t;

#define F_CPU            20000000

#define PSTR(s) \
	((const char *)(s))

#define strstr_P	strstr
#define sprintf_P	sprintf

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

extern signed char 	pgm_read_byte_near(const signed char* p);
extern short 	pgm_read_word_near(const short* p);
extern short 	pgm_read_word(const char* p);

extern float 		pgm_read_float_near(const float* p);

inline double square	(	double 	__x	)	{ return __x * __x; }


extern char * 	strncpy_P (char *, const char *, size_t);

#define _BV(bit) \
	(1 << (bit))

#define pgm_read_byte(address_short) \
	pgm_read_byte_near((signed char*) address_short)

#define OUT_WRITE(IO, v) { SET_OUTPUT(IO); WRITE(IO, v); }

#include "language.h"


extern char * utoa(	unsigned int val,char * s,	int radix);
extern char * itoa(	int val,	char * s,	int radix);
extern char * ltoa(	long val,	char * s,	int radix);
extern char * ultoa(unsigned long val,	char * s,	int radix);
extern char * dtostrf(	double __val,	signed char __width,	unsigned char __prec,	char * __s);

extern void wdt_reset();
