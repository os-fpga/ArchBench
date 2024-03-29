#!/bin/bash

set_device_size="castor10x8_heterogeneous"
strategy="delay"
main_path=$PWD
files=$(find . -type f -iname "bit_sim.sh")
default=0

default_paths()
{
#    echo ""
    default=1
    echo "default paths for architecture"
    vpr_file="../../../gemini_legacy_architecture/gemini_vpr.xml"
    openfpga_file="../../../gemini_legacy_architecture/gemini_openfpga.xml"
    fixed_sim_openfpga_file="../../../gemini_legacy_architecture/fixed_sim_openfpga.xml"
    repack_design_constraint_file="../../../gemini_legacy_architecture/repack_design_constraint.xml"
    bitstream_annotation_file="../../../gemini_legacy_architecture/bitstream_annotation.xml"   
}

while getopts "v:o:f:r:b:" flag
do
   case "${flag}" in
      v ) vpr_file="$OPTARG" ;;
      o ) openfpga_file="$OPTARG" ;;
      f ) fixed_sim_openfpga_file="$OPTARG" ;;
      r ) repack_design_constraint_file="$OPTARG" ;;
      b ) bitstream_annotation_file="$OPTARG" ;;
      ? ) default_paths ;; # Print default_paths in case paths is non-existent
   esac
done

if [ -z "$vpr_file" ] || [ -z "$openfpga_file" ] || [ -z "$fixed_sim_openfpga_file" ] || [ -z "$repack_design_constraint_file" ] || [ -z "$bitstream_annotation_file" ]
then
   echo "Some or all of the parameters are empty";
   default_paths
fi

echo "$vpr_file"
echo "$openfpga_file"
echo "$fixed_sim_openfpga_file"
echo "$repack_design_constraint_file"
echo "$bitstream_annotation_file"

for i in $files; do
    directory_path=$(dirname $i) 
    cd $directory_path
    bash bit_sim.sh
    cd $main_path
done

bash cga_final_results.sh
