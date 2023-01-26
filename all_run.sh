#!/bin/bash

arch_files="../../../gemini_legacy_architecture/gemini_vpr.xml ../../../gemini_legacy_architecture/gemini_openfpga.xml"
set_device_size="castor10x8_heterogeneous"
strategy="delay"
main_path=$PWD
files=$(find . -type f -iname "bit_sim.sh")

for i in $files; do
    directory_path=$(dirname $i) 
    cd $directory_path
    bash bit_sim.sh $arch_files $set_device_size $strategy
    cd $main_path
done