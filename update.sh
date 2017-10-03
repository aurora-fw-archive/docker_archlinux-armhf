#!/bin/sh
set -e

wget http://os.archlinuxarm.org/os/ArchLinuxARM-armv7-latest.tar.gz
mkdir -p system
bsdtar -xpf ArchLinuxARM-armv7-latest.tar.gz -C system
rm ArchLinuxARM-armv7-latest.tar.gz
docker build -t aurorafw/archlinux-armhf .
rm -rf system
