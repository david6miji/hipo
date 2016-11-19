## 사용자 소스
TARGET			= sim_console

SRCS			= main.c 
SRCS			+= 

LIBS		    = 
LIBS		    += -lsimavr  
LIBS		    += -lelf 

LIB_DIRS		= 
LIB_DIRS		+= -Wl,-rpath,/usr/local/lib/

INCLUDE_DIRS	= 
INCLUDE_DIRS	+= -I. 

CFLAGS			= 
CFLAGS			+= 
CFLAGS			+= -MMD 
CFLAGS			+= --std=gnu99 
CFLAGS			+= -Wall 
CFLAGS			+= -O2 
CFLAGS			+= -Wall 
CFLAGS			+= -g 
CFLAGS			+= -fPIC 

LDFLAGS			= 
LDFLAGS			+= 

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
CP				= 	cp -a
MV				= 	mv

all: $(TARGET)


$(TARGET) : $(OBJS)
	$(CC) $(LDFLAGS) $(LIB_DIRS) $(OBJS) -o $@ $(LIBS) 
	$(NM) $(TARGET) > $(TARGET).map
	$(CP) $@ $(DIR_BIN)

%.o:%.c
	@echo "Compiling $< ..."
	$(CC) -c $(CFLAGS) $(INCLUDE_DIRS) -o $(OUT)$@ $<

dep :
	$(CC) -M $(INCLUDE_DIRS) $(SRCS) > .depend
	
clean:
	rm -f *.bak
	rm -f *.map
	rm -f *.o
	rm -f *.d
	rm -f core	
	rm -f $(OBJS)
	rm -f $(TARGET)
	rm -f $(DIR_BIN)$(TARGET)

distclean: clean
	rm -rf .depend	

ifeq (.depend,$(wildcard .depend))
include .depend
endif
	