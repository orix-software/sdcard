#! /bin/bash

wget -r --no-parent http://repo.orix.oric.org/dists/2020.2/tgz/6502/
mkdir -p sdcard
mv repo.orix.oric.org/dists/2020.2/tgz/6502/*.tgz sdcard/
rm sdcard/sdcard.tgz
cd sdcard && gzip -d *.tgz && for I in `ls *.tar`; do tar xvf $I; done && rm *.tar


