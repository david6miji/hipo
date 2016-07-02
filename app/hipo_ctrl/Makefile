#
# this is Makefile for hipo_ctrl
#

#CROSS_PREFIX	= mipsel-linux-
#CROSS_PREFIX	= arm-linux-
#CROSS_PREFIX   = arm-generic-linux-gnueabi-

# CP_DIR          = /nfs/pool_sw

##
TARGET			 = hipo_ctrl
SRCS			 = src/main.c
SRCS			+= src/yyc.c
SRCS			+= src/MarlinSerial.c
SRCS			+= src/WString.c
SRCS			+= src/planner.c
SRCS			+= src/stepper.c

#---------------------------------------------------------------------
##
DIR_LIBS         = ./lib/

##

INCLUDE_DIRS		+= -I.
LIB_DIRS			+=

OBJS			= $(SRCS:.cpp=.o)

#
CFLAGS			= $(INCLUDE_DIRS) -o -W  -Wall -O2
LDFLAGS		= $(LIB_DIRS)
LIBS		    = -lm

#---------------------------------------------------------------------
CC				=	$(CROSS_PREFIX)gcc
CXX			 	=	$(CROSS_PREFIX)g++
AR				=	$(CROSS_PREFIX)ar rc
AR2				=	$(CROSS_PREFIX)ranlib
RANLIB			=	$(CROSS_PREFIX)ranlib
LD				=	$(CROSS_PREFIX)ld
NM				=	$(CROSS_PREFIX)nm
STRIP			=	$(CROSS_PREFIX)strip
OBJCOPY		=	$(CROSS_PREFIX)objcopy
CP	= cp
MV	= mv
#--------------------------------------------------------------------

all : $(TARGET)

$(TARGET) : $(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) -o $@ $(LIBS)
	$(NM) $(TARGET) > $(TARGET).map

%.o:%.c
	@echo "Compiling $< ..."
	$(CC) -c $(CFLAGS) -o $@ $<

%.o:%.cc
	@echo "C++ compiling $< ..."
	$(CC) -c $(CFLAGS) $(CXXFLAGS) -o $@ $<

%.o:%.cpp
	@echo "C++ compiling $< ..."
	$(CC) -c $(CFLAGS) $(CXXFLAGS) -o $@ $<

dep :
	$(CC)	-M	$(INCLUDE_DIRS)	$(SRCS) > .depend

clean:
	rm -f *.bak
	rm -f *.map
	rm -f *.o
	rm -f $(OBJS)
	rm -f $(TARGET) core

distclean: clean
	rm -rf .depend


ifeq (.depend,$(wildcard .depend))
include .depend
endif
