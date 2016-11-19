#!/bin/sh

build_path="/kernel_build/"
CROSS_PREFIX="arm-linux-gnueabihf-"

echo $build_path

if [ -f .config ]; then
	echo ".....mrproper"
	make mrproper
fi

if [ ! -d $build_path ]; then
	mkdir $build_path
	chmod 777 $build_path
fi


if [ ! -f $build_path/.config ]; then
	echo ".....am335x defconfig"	
	ARCH=arm make arm=ARM CROSS_COMPILE=${CROSS_PREFIX} O=$build_path distclean 
	ARCH=arm make arm=ARM CROSS_COMPILE=${CROSS_PREFIX} O=$build_path omap2plus_defconfig
fi


if [ "$1" = "" ]; then
	ARCH=arm make arm=ARM CROSS_COMPILE=${CROSS_PREFIX} O=$build_path uImage LOADADDR=0x80008000
	ARCH=arm make arm=ARM CROSS_COMPILE=${CROSS_PREFIX} O=$build_path dtbs
else
    ARCH=arm make arm=ARM CROSS_COMPILE=${CROSS_PREFIX} O=$build_path $1 $2 $3
	ARCH=arm make arm=ARM CROSS_COMPILE=${CROSS_PREFIX} O=$build_path dtbs
fi

