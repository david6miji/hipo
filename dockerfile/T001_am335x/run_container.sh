#!/bin/bash
docker run \
--rm -it \
-v ~/hipo/tool_chain/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux:/toolchain \
-v ~/hipo/kernel_src/linux-3.14.26:/kernel_src \
-v ~/hipo/kernel_build/linux-3.14.26:/kernel_build \
build/t001_am335x:latest
