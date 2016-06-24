
#include <stdio.h>
#include <string.h>

#include "yyc.h"

unsigned char _SREG;

unsigned char _UBRRH;
unsigned char _UDRE;
unsigned char _UCSRA;
unsigned char _UDR;
unsigned char _RXC;
unsigned char _U2X;

unsigned int pgm_read_byte_near(const char* addr){
	return 0;
}

char * 	strncpy_P (char *dsc, const char *src, size_t n){
	return strncpy( dsc,src,n);
}

char * utoa(	unsigned int val,char * s,	int radix){
	return NULL;
}

char * itoa(	int val,	char * s,	int radix){
	return NULL;
}

char * ltoa(	long val,	char * s,	int radix){
	return NULL;
}

char * ultoa(unsigned long val,	char * s,	int radix){
	return NULL;
}

char * dtostrf(	double __val,	signed char __width,	unsigned char __prec,	char * __s){
	return NULL;
}

