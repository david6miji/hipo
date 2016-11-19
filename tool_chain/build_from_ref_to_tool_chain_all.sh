#!/bin/bash
echo "build from ref to all tool chains"

echo "build gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux"

rm -rf gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux
tar xf ref/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux.tgz 

echo "all done"

