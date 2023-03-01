#!/bin/bash

apt-get update
apt-get install linux-tools-common linux-tools-generic linux-tools-`uname -r`

cd ../
git clone https://github.com/intelxed/mbuild.git mbuild
git clone https://github.com/intelxed/xed
cd xed
./mfile.py --share
./mfile.py examples
sudo ./mfile.py --prefix=/usr/local install
sudo ldconfig
find . -type f -name xed
cp ./obj/wkit/examples/obj/xed /usr/local/bin