
PWD 	= $(shell pwd)/

DIRS = 
DIRS += sim
DIRS += fw

export DIR_BIN = $(PWD)bin/

all:
	mkdir -p $(DIR_BIN)
	for ds in ${DIRS}; do $(MAKE) -C $$ds; done

dep:
	for ds in ${DIRS}; do $(MAKE) -C $$ds dep; done
	
clean:
	for ds in ${DIRS}; do $(MAKE) -C $$ds clean; done

distclean:
	for ds in ${DIRS}; do $(MAKE) -C $$ds distclean; done

	