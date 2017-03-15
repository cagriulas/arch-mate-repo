#!/bin/bash

cd arch_mate/
mkdir -p ../arch-mate-repo/packages
for i in `cat ../order|xargs` ; do
echo $i
cd $i && cp *.pkg.tar.xz ../../arch-mate-repo/packages && cd ..
done
cd ../arch-mate-repo/packages
for package in `ls *.pkg.tar.xz|xargs` ; do
gpg --detach-sign $package
done
cd ..
repo-add mate-1.18.db.tar.gz ./packages/* -s
