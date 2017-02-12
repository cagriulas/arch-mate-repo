#!/bin/bash
#fix sha1sum of caja-extensions-common
sed -i "18 s/123123321/de5d479838ace6e26ce5cbeb0ab31cd8b23d0081/" arch_mate/caja-extensions-common/PKGBUILD

cd arch_mate/
for i in `cat ../order|xargs` ; do
echo $i
cd $i && makepkg -sfrC --noconfirm --nosign && cd ..
done
