#!/bin/bash

sudo dd if=/dev/zero of=/dev/mmcblk0 bs=1024 count=1024
sleep 1
sync
sudo dd if=./MLO of=/dev/mmcblk0 bs=512 seek=256 conv=notrunc
sleep 1
sync
sudo dd if=./u-boot.img of=/dev/mmcblk0 bs=512 seek=768 count=1024 conv=notrunc
sleep 1
sync
