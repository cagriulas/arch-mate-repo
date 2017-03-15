#!/bin/bash

cd arch_mate/
for i in `cat ../order|xargs` ; do
echo $i
cd $i && makepkg -sfrCi --noconfirm --nosign && cd ..
done
