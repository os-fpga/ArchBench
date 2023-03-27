#!/bin/bash
set -e

main_path=$PWD

design_name=${PWD##*/}

xml_root=`git rev-parse --show-toplevel`
cd $xml_root/openfpga-pd-castor-rs 

if [ -d .git ]; then
    git checkout main && git pull origin main && git pull origin --tags
else
    cd $xml_root/openfpga-pd-castor-rs && git submodule update --init && git checkout main && git pull origin main && git pull origin --tags
fi 
fixed_sim_path=`which raptor | xargs dirname`

if [ -f $main_path/tool.conf ]; then # tool.conf
    source $main_path/tool.conf
fi
echo "vpr_file_path $vpr_file_path"
echo "xml_tag $xml_tag"
if [ "$xml_tag" == "latest" ]; then
    cd $xml_root/openfpga-pd-castor-rs 
    latest_tag=$(git describe --tags `git rev-list --tags --max-count=1`)
    git checkout $latest_tag
else
    cd $xml_root/openfpga-pd-castor-rs && git checkout $xml_tag
fi
cd $main_path

[ -d SRC ] && rm -fr SRC
[ -d $design_name\_golden ] && rm -fr $design_name\_golden
[ -f $design_name\_custom.openfpga ] && rm -fr $design_name\_custom.openfpga
# [ -f bitstream_sim.log ] && rm -fr bitstream_sim.log
# [ -f post_route_sim.log ] && rm -fr post_route_sim.log
[ -f raptor.log ] && rm -fr raptor.log
[ -f raptor_perf.log ] && rm -fr raptor_perf.log
[ -f bitstream_text.txt ] && rm -fr bitstream_text.txt

# python3 ../../scripts/gen_openfpga_script.py $design_name $vpr_file $openfpga_file $fixed_sim_openfpga_file $repack_design_constraint_file $bitstream_annotation_file $default

design_path=`find . -type f -iname "$design_name.v"`
tool_name="vcs"

command -v raptor >/dev/null 2>&1 && raptor_path=$(which raptor) || { echo >&2 echo "First you need to source Raptor"; end_time exit; }
lib_fix_path="${raptor_path:(-11)}"
library=${raptor_path/$lib_fix_path//share/raptor/sim_models/rapidsilicon}

[ ! -d $design_name\_golden ] && mkdir $design_name\_golden 

cd $design_name\_golden

echo "create_design $design_name">raptor.tcl
echo "target_device GEMINI_COMPACT_82x68">>raptor.tcl
[ -z "$vpr_file_path" ] || [ -z "$openfpga_file_path" ] && echo "">>raptor.tcl || echo "architecture $vpr_file_path $openfpga_file_path">>raptor.tcl
echo "add_include_path ../rtl">>raptor.tcl
echo "add_library_path ../rtl">>raptor.tcl  
echo "add_library_ext .v .sv">>raptor.tcl 
echo "add_design_file ../rtl/$design_name.v">>raptor.tcl
echo "set_top_module $design_name">>raptor.tcl
[ -z "$set_device_size" ] && echo "" || echo "set_device_size $set_device_size">>raptor.tcl
[ -z "$bitstream_setting_path" ] || [ -z "$fixed_sim_openfpga_path" ] || [ -z "$repack_design_constraint_path" ] || [ -z "$fabric_key_path" ] && echo "" || echo "bitstream_config_files -bitstream $bitstream_setting_path -sim $fixed_sim_openfpga_path -repack $repack_design_constraint_path -key $fabric_key_path">>raptor.tcl
[ -z "$set_channel_width" ] && echo "" || echo "set_channel_width $set_channel_width">>raptor.tcl
echo "add_constraint_file ../clk_constraint.sdc">>raptor.tcl 
echo "pnr_options --post_synth_netlist_unconn_inputs gnd">>raptor.tcl 
echo "synthesize $strategy">>raptor.tcl
echo "packing">>raptor.tcl  
echo "global_placement">>raptor.tcl  
echo "place">>raptor.tcl  
echo "route">>raptor.tcl  
echo "sta">>raptor.tcl  
echo "power">>raptor.tcl
[ -z "$vpr_file_path" ] && echo "bitstream enable_simulation">>raptor.tcl || echo "bitstream">>raptor.tcl 

xml_version=`cd $xml_root/openfpga-pd-castor-rs && git describe --tags --abbrev=0`

start_raptor=`date +%s`
raptor --batch --script raptor.tcl 
end_raptor=`date +%s`
runtime_raptor=$((end_raptor-start_raptor))
echo -e "\nTotal RunTime: $runtime_raptor sec">>raptor.log
raptor --version>>raptor.log
echo -e "Netlist Version: $xml_version">>raptor.log
echo -e "Device: $device">>raptor.log

# string="_post_route"
# while read line; do
#         if [[ $(echo "$line" | cut -d "(" -f1)  == "module $design_name " ]]; 
#         then
#             sed -i "s/module $design_name/module $design_name\_post_route/" $design_name/$design_name\_post\_synthesis.v
#             break 2
#         fi
#         if [[ $(echo "$line" | cut -d "(" -f1)  == "module $design_name$string " ]]; 
#         then
#             break 2
#         fi
# done < $design_name/$design_name\_post\_synthesis.v

# root_path=`pwd`
# route_tb_path=`find ../ -type f -iname "sim_route_$design_name.sv" -printf $root_path/'%p\n'`
# if [ -z "$route_tb_path" ]
# then
#     echo "No such Test Bench for $design_name"
# else 
#     echo -e "Test Bench for this design Found!"
# fi
# bitstream_tb_path=`find ../sim -type f -iname "$design_name\_include_netlists.v" -printf $root_path/'%p\n'`
# if [ -z "$bitstream_tb_path" ]
# then
#     echo "No such Test Bench for $design_name"
# else 
#     echo -e "Test Bench for this design Found!"
# fi


# bram_sim=`find $library -wholename "*/genesis2/brams_sim.v"`    
# cell_path=`find $library -wholename "*/genesis2/cells_sim.v"`
# dsp_sim=`find $library -wholename "*/genesis2/dsp_sim.v"`
# dsp_map=`find $library -wholename "*/genesis2/dsp_map.v"`
# dsp_final_map=`find $library -wholename "*/genesis2/dsp_final_map.v"`
# lut_map=`find $library -wholename "*/common/simlib.v"`
# TDP18K_FIFO=`find $library -wholename "*/genesis2/TDP18K_FIFO.v"`
# ufifo_ctl=`find $library -wholename "*/genesis2/ufifo_ctl.v"`
# sram1024x18=`find $library -wholename "*/genesis2/sram1024x18.v"`
# primitive=`find $library -wholename "*/genesis2/primitives.v"`

# [ ! -d $design_name\_$tool_name\_post_route_files ] && mkdir $design_name\_$tool_name\_post_route_files
# [ -d $design_name\_$tool_name\_post_route_files ] && cd $design_name\_$tool_name\_post_route_files
# start_post_route=`date +%s`
# timeout 4m vcs -sverilog -timescale=1ns/1ps $cell_path $bram_sim $lut_map $TDP18K_FIFO $ufifo_ctl $sram1024x18 $dsp_sim $primitive ../../rtl/$design_name.v ../$design_name/$design_name\_post\_synthesis.v $route_tb_path +incdir+$directory_path -y $directory_path +libext+.v +define+VCS_MODE=1 -full64 -debug_all -lca -kdb | tee post_route_sim.log
# ./simv | tee -a post_route_sim.log
# end_post_route=`date +%s`
# runtime_post_route=$((end_post_route-start_post_route))
# echo -e "\nTotal RunTime: $runtime_post_route sec">>post_route_sim.log

# while read line; do
#         if [[ $line == *"All Comparison Matched"* ]]
#         then
#             rm -fr tb.vcd
#         fi
#         if [[ $line == *"ERROR: SIM: Simulation Failed"* ]]
#         then
#             vcd2fst tb.vcd tb.fst --compress
#             rm -fr tb.vcd
#         fi
# done < post_route_sim.log
# cd ..
# [ ! -d $design_name\_$tool_name\_bitstream_sim_files ] && mkdir $design_name\_$tool_name\_bitstream_sim_files
# [ -d $design_name\_$tool_name\_bitstream_sim_files ] && cd $design_name\_$tool_name\_bitstream_sim_files

# cd ../../..
# if [ -d "SRC" ] 
# then
#     echo "SRC folder already exists" 
# else
#     . ../scripts/change_netlist_dir_10x8.sh
# fi
# cd $design_name/$design_name\_golden/$design_name\_$tool_name\_bitstream_sim_files

# python3 ../../../../scripts/force.py $design_name

# start_bitstream=`date +%s`
# timeout 20m vcs -sverilog $bitstream_tb_path -full64 -debug_all -lca -kdb | tee bitstream_sim.log
# ./simv | tee -a bitstream_sim.log
# end_bitstream=`date +%s`
# runtime_bitstream=$((end_bitstream-start_bitstream))
# echo -e "\nTotal RunTime: $runtime_bitstream sec">>bitstream_sim.log

cd $main_path
# mv ./$design_name\_golden/$design_name\_vcs_bitstream_sim_files/bitstream_sim.log .
# mv ./$design_name\_golden/$design_name\_vcs_post_route_files/post_route_sim.log .
mv ./$design_name\_golden/raptor.log .
mv ./$design_name\_golden/raptor_perf.log .

python3 ../../scripts/parser.py 

