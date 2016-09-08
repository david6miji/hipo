cmd_arch/arm/boot/zImage := /opt/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux//bin/arm-linux-gnueabihf-objcopy -O binary -R .comment -S  arch/arm/boot/compressed/vmlinux arch/arm/boot/zImage
