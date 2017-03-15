#!/bin/bash
set -e

cd arch_mate_pkgbuilds/
for i in `cat ../order|xargs` ; do
echo $i
cd $i && makepkg -sfrCi --noconfirm --nosign && cd ..
done
