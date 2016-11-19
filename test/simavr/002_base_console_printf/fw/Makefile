## 사용자 소스
TARGET			= fw_atmega2560_console_printf

CROSS_PREFIX	= avr-
#MCU_TARGET     = at90s2313
#MCU_TARGET     = at90s2333
#MCU_TARGET     = at90s4414
#MCU_TARGET     = at90s4433
#MCU_TARGET     = at90s4434
#MCU_TARGET     = at90s8515
#MCU_TARGET     = at90s8535
#MCU_TARGET     = atmega128
#MCU_TARGET     = atmega1280
#MCU_TARGET     = atmega1281
#MCU_TARGET     = atmega1284p
#MCU_TARGET     = atmega16
#MCU_TARGET     = atmega163
#MCU_TARGET     = atmega164p
#MCU_TARGET     = atmega165
#MCU_TARGET     = atmega165p
#MCU_TARGET     = atmega168
#MCU_TARGET     = atmega169
#MCU_TARGET     = atmega169p
MCU_TARGET     = atmega2560
#MCU_TARGET     = atmega2561
#MCU_TARGET     = atmega32
#MCU_TARGET     = atmega324p
#MCU_TARGET     = atmega325
#MCU_TARGET     = atmega3250
#MCU_TARGET     = atmega329
#MCU_TARGET     = atmega3290
#MCU_TARGET     = atmega32u4
#MCU_TARGET     = atmega48
#MCU_TARGET     = atmega64
#MCU_TARGET     = atmega640
#MCU_TARGET     = atmega644
#MCU_TARGET     = atmega644p
#MCU_TARGET     = atmega645
#MCU_TARGET     = atmega6450
#MCU_TARGET     = atmega649
#MCU_TARGET     = atmega6490
#MCU_TARGET     = atmega8
#MCU_TARGET     = atmega8515
#MCU_TARGET     = atmega8535
#MCU_TARGET     = atmega88
#MCU_TARGET     = attiny2313
#MCU_TARGET     = attiny24
#MCU_TARGET     = attiny25
#MCU_TARGET     = attiny26
#MCU_TARGET     = attiny261
#MCU_TARGET     = attiny44
#MCU_TARGET     = attiny45
#MCU_TARGET     = attiny461
#MCU_TARGET     = attiny84
#MCU_TARGET     = attiny85
#MCU_TARGET     = attiny86

SRCS			= main.c 
SRCS			+= 

LIBS		    = 

LIB_DIRS		= 

INCLUDE_DIRS	= 
INCLUDE_DIRS	+= -I. 
INCLUDE_DIRS	+= -I/usr/local/include/simavr/avr/

CFLAGS			= 
CFLAGS			+= -Wall
CFLAGS			+= -gdwarf-2
CFLAGS			+= -Os
CFLAGS			+= -std=gnu99
CFLAGS			+= -fno-inline-small-functions
CFLAGS			+= -ffunction-sections -fdata-sections
CFLAGS			+= -mmcu=$(MCU_TARGET)
CFLAGS			+= -DF_CPU=8000000
			
LDFLAGS			= 
LDFLAGS			+= -Wl,--relax,--gc-sections
LDFLAGS			+= -Wl,--undefined=_mmcu,--section-start=.mmcu=0x910000

OBJS			= $(SRCS:.c=.o)

CC				=	$(CROSS_PREFIX)gcc
CXX			 	=	$(CROSS_PREFIX)g++
AR				=	$(CROSS_PREFIX)ar rc
AR2				=	$(CROSS_PREFIX)ranlib
RANLIB			=	$(CROSS_PREFIX)ranlib
LD				=	$(CROSS_PREFIX)ld
NM				=	$(CROSS_PREFIX)nm
STRIP			=	$(CROSS_PREFIX)strip
OBJCOPY		 	=	$(CROSS_PREFIX)objcopy
OBJDUMP        	=	$(CROSS_PREFIX)objdump
CP				= 	cp -a
MV				= 	mv

all: $(TARGET).axf lst text eeprom


$(TARGET).axf : $(OBJS)
	$(CC) $(CFLAGS) $(INCLUDE_DIRS) $(LDFLAGS) $(LIB_DIRS) -o $@ $^ $(LIBS)
	$(CP) $@ $(DIR_BIN)

%.o:%.c
	@echo "Compiling $< ..."
	$(CC) -c $(CFLAGS) $(INCLUDE_DIRS) -o $(OUT)$@ $<

lst:  $(TARGET).lst
	
%.lst: %.axf
	$(OBJDUMP) -h -S $< > $@

dep :
	$(CC) -M $(INCLUDE_DIRS) $(SRCS) > .depend
	
clean:
	rm -f *.bak
	rm -f *.map
	rm -f *.o
	rm -f *.d
	rm -f core	
	rm -f $(OBJS)
	rm -f $(TARGET).axf
	rm -f $(TARGET).lst
	rm -f $(TARGET).hex
	rm -f $(TARGET).bin
	rm -f $(TARGET).srec
	rm -f $(TARGET).elf
	rm -f $(TARGET)_eeprom.hex
	rm -f $(TARGET)_eeprom.bin
	rm -f $(TARGET)_eeprom.srec
	rm -f $(DIR_BIN)$(TARGET).axf
	rm -f $(DIR_BIN)$(TARGET).hex

distclean: clean
	rm -rf .depend	

ifeq (.depend,$(wildcard .depend))
include .depend
endif
	
text: hex bin srec
hex:  $(TARGET).hex
	$(CP) $< $(DIR_BIN)
	
bin:  $(TARGET).bin
srec: $(TARGET).srec
%.hex: %.axf
	$(OBJCOPY) -j .text -j .data -O ihex $< $@
%.srec: %.axf
	$(OBJCOPY) -j .text -j .data -O srec $< $@
%.bin: %.axf
	$(OBJCOPY) -j .text -j .data -O binary $< $@
# Rules for building the .eeprom rom images
eeprom: ehex ebin esrec
ehex:  $(TARGET)_eeprom.hex
ebin:  $(TARGET)_eeprom.bin
esrec: $(TARGET)_eeprom.srec
%_eeprom.hex: %.axf
	$(OBJCOPY) -j .eeprom --change-section-lma .eeprom=0 -O ihex $< $@ \
    || { echo empty $@ not generated; exit 0; }
%_eeprom.srec: %.axf
	$(OBJCOPY) -j .eeprom --change-section-lma .eeprom=0 -O srec $< $@ \
    || { echo empty $@ not generated; exit 0; }
%_eeprom.bin: %.axf
	$(OBJCOPY) -j .eeprom --change-section-lma .eeprom=0 -O binary $< $@ \
    || { echo empty $@ not generated; exit 0; }	
	
	