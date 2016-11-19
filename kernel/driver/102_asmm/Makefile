#
# kernel 3.0 driver Makefile
#
obj-m  			:= drv_asmm.o
drv_asmm-objs 	 = asmm_main.o
drv_asmm-objs 	+= fcm_core.o
drv_asmm-objs 	+= ac_servo.o
drv_asmm-objs 	+= asmm_sysfs.o

CROSS_PATH		= /opt/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux/
CROSS_PREFIX	= arm-linux-gnueabihf-
KDIR   			:= /work/kernel/build
PWD    			:= $(shell pwd)

default:
	ARCH=arm $(MAKE) arm=ARM CROSS_COMPILE=${CROSS_PATH}/bin/${CROSS_PREFIX} -C $(KDIR) M=$(PWD)  

install :
	scp drv_asmm.ko root@121.165.101.67:/root/
	
clean :
	rm -rf *.ko
	rm -rf *.mod.*
	rm -rf .*.cmd
	rm -rf *.o
	rm -rf .tmp_versions
	rm -rf modules.order
	rm -rf Module.symvers
	
	
