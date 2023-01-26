#!/bin/bash

design_name="and2"
arch_files="$1 $2"
set_device_size=$3
strategy=$4

design_path=`find . -type f -iname "$design_name.v"`
tool_name="vcs"

command -v raptor >/dev/null 2>&1 && raptor_path=$(which raptor) || { echo >&2 echo "First you need to source Raptor"; end_time exit; }
lib_fix_path="${raptor_path:(-11)}"
library=${raptor_path/$lib_fix_path//share/raptor/sim_models/rapidsilicon}

[ ! -d $design_name\_golden ] && mkdir $design_name\_golden 

cd $design_name\_golden

echo "create_design $design_name">raptor.tcl
echo "#target_device GEMINI_LEGACY">>raptor.tcl
echo "architecture $arch_files">>raptor.tcl
echo "add_include_path ../rtl">>raptor.tcl
echo "add_library_path ../rtl">>raptor.tcl  
echo "add_library_ext .v .sv">>raptor.tcl 
echo "add_design_file ../rtl/$design_name.v">>raptor.tcl
echo "set_top_module $design_name">>raptor.tcl
echo "set_device_size $set_device_size">>raptor.tcl
echo "pnr_options --post_synth_netlist_unconn_inputs vcc">>raptor.tcl 
echo "synthesize $strategy">>raptor.tcl
echo "packing">>raptor.tcl  
echo "global_placement">>raptor.tcl  
echo "place">>raptor.tcl  
echo "route">>raptor.tcl  
echo "sta">>raptor.tcl  
echo "power">>raptor.tcl  
echo "bitstream">>raptor.tcl  

raptor --batch --script raptor.tcl 

string="_post_route"
while read line; do
        if [[ $(echo "$line" | cut -d "(" -f1)  == "module $design_name " ]]; 
        then
            sed -i "s/module $design_name/module $design_name\_post_route/" $design_name/$design_name\_post\_synthesis.v
            break 2
        fi
        if [[ $(echo "$line" | cut -d "(" -f1)  == "module $design_name$string " ]]; 
        then
            break 2
        fi
done < $design_name/$design_name\_post\_synthesis.v

root_path=`pwd`
route_tb_path=`find ../ -type f -iname "sim_route_$design_name.sv" -printf $root_path/'%p\n'`
if [ -z "$route_tb_path" ]
then
    echo "No such Test Bench for $design_name"
else 
    echo -e "Test Bench for this design Found!"
fi
bitstream_tb_path=`find ../ -type f -iname "$design_name\_include_netlists.v" -printf $root_path/'%p\n'`
if [ -z "$bitstream_tb_path" ]
then
    echo "No such Test Bench for $design_name"
else 
    echo -e "Test Bench for this design Found!"
fi


bram_sim=`find $library -wholename "*/genesis2/brams_sim.v"`    
cell_path=`find $library -wholename "*/genesis2/cells_sim.v"`
dsp_sim=`find $library -wholename "*/genesis2/dsp_sim.v"`
dsp_map=`find $library -wholename "*/genesis2/dsp_map.v"`
dsp_final_map=`find $library -wholename "*/genesis2/dsp_final_map.v"`
lut_map=`find $library -wholename "*/common/simlib.v"`
TDP18K_FIFO=`find $library -wholename "*/genesis2/TDP18K_FIFO.v"`
ufifo_ctl=`find $library -wholename "*/genesis2/ufifo_ctl.v"`
sram1024x18=`find $library -wholename "*/genesis2/sram1024x18.v"`
# primitive=`find $library -wholename "*/genesis2/primitives.v"`
primitive="/nfs_scratch/scratch/CompilerValidation/abdul_hameed/zaheer/ArchBench/primitives.v"

[ ! -d $design_name\_$tool_name\_post_route_files ] && mkdir $design_name\_$tool_name\_post_route_files
[ -d $design_name\_$tool_name\_post_route_files ] && cd $design_name\_$tool_name\_post_route_files
timeout 4m vcs -sverilog $cell_path $bram_sim $lut_map $TDP18K_FIFO $ufifo_ctl $sram1024x18 $dsp_sim $primitive ../../rtl/$design_name.v ../$design_name/$design_name\_post\_synthesis.v $route_tb_path +incdir+$directory_path -y $directory_path +libext+.v +define+VCS_MODE=1 -full64 -debug_all -lca -kdb | tee post_route_sim.log
./simv | tee -a post_route_sim.log
while read line; do
        if [[ $line == *"All Comparison Matched"* ]]
        then
            rm -fr tb.vcd
        fi
        if [[ $line == *"ERROR: SIM: Simulation Failed"* ]]
        then
            vcd2fst tb.vcd tb.fst --compress
            rm -fr tb.vcd
        fi
done < post_route_sim.log
cd ..
[ ! -d $design_name\_$tool_name\_bitstream_sim_files ] && mkdir $design_name\_$tool_name\_bitstream_sim_files
[ -d $design_name\_$tool_name\_bitstream_sim_files ] && cd $design_name\_$tool_name\_bitstream_sim_files
timeout 4m vcs -sverilog $bitstream_tb_path -full64 -debug_all -lca -kdb | tee bitstream_sim.log
./simv | tee -a bitstream_sim.log