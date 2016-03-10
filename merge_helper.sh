#!/bin/bash
file=$1

cd ~junhao/gamess/gamess2014r1_0310mod/source
for file in *.src
do
  echo "Merging: $file"
  
  base=~cyrus/qmc_setup/gamess09/source/$file
  mod=~cyrus/qmc_setup/gamess09_modified/source/$file
  new=~junhao/gamess/gamess2014r1_0310mod/source/$file
  
  merge $new $base $mod

done
exit
base=~cyrus/qmc_setup/gamess09/source/$file
mod=~cyrus/qmc_setup/gamess09_modified/source/$file
new=~junhao/gamess/gamess2014r1/source/$file
echo Base: $base
echo New : $new
echo Mod : $mod
merge $new $base $mod
