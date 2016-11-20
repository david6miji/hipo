#!/bin/sh

echo "bootloader compile..."

BUILD_PATH="/bootloader_build/"
CROSS_PREFIX="arm-linux-gnueabihf-"

if [ -f .config ]; then
	echo ".....mrproper"
	make mrproper
fi

if [ ! -d $BUILD_PATH ]; then
	mkdir $BUILD_PATH
	chmod 777 $BUILD_PATH
fi

if [ ! -f $BUILD_PATH/.config ]; then
	echo ".....am335x defconfig"	
	ARCH=arm make arm=ARM CROSS_COMPILE=${CROSS_PREFIX} O=$BUILD_PATH distclean 
	ARCH=arm make arm=ARM CROSS_COMPILE=${CROSS_PREFIX} O=$BUILD_PATH am335x_falinux_iem_defconfig
fi

ARCH=arm make arm=ARM CROSS_COMPILE=${CROSS_PREFIX} O=$BUILD_PATH $1 $2 $3
