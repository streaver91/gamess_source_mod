#!/bin/bash
file=$1
base_ext=09_
mod_ext=09_mod_
new_ext=14_

base=~cyrus/qmc_setup/gamess09/source/$file
mod=~cyrus/qmc_setup/gamess09_modified/source/$file
new=~junhao/gamess/gamess2014r1_0310mod/source-backup/$file

echo Base: $base
echo New : $new
echo Mod : $mod

dest=~junhao/gamess/gamess_source_mod/

cp $base $dest$base_ext$file
cp $mod $dest$mod_ext$file
cp $new $dest$new_ext$file
