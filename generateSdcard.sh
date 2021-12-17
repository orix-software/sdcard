#! /bin/bash

wget -r --no-parent http://repo.orix.oric.org/dists/official/tgz/6502/
mkdir -p build
mv repo.orix.oric.org/dists/official/tgz/6502/*.tgz build/
rm build/sdcard.tgz
cd build && gzip -d *.tgz && for I in `ls *.tar`; do tar xvf $I; done && rm *.tar



