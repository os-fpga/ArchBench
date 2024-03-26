#!/bin/bash
# set -e

main_path=$PWD

design_name=${PWD##*/}
simulator_name="" #vcs,iverilog
internal_bitstream_simulation=true
external_bitstream_simulation=false
device=GEMINI_COMPACT_10x8

given_device=$2
xml_root=`git rev-parse --show-toplevel`
cd $xml_root/openfpga-pd-castor-rs 

if [ -f $xml_root/openfpga-pd-castor-rs/k6n8_TSMC16nm_7.5T/FPGA10x8_gemini_compact_pnr/fabric_task/flow_inputs/k6n8_vpr_annotated.xml ]; then
    echo "No need to update submodule"
else
    echo -e "openfpga-pd-castor-rs is not initialized. Please inilialize it using below command:\ncd $xml_root/openfpga-pd-castor-rs && git submodule update --init && git checkout main && git pull origin main && git pull origin --tags"
    exit 1
fi
fixed_sim_path=`which raptor | xargs dirname`

if [ "$given_device" == "Multiple_Devices" ]; then     #These changes are made to get device_name from CGA. In case of golden regression device_name is Multiple. If device name is multiple then it means it is golden regression and regression will use device_name mentioned in the script. 
    if [ -f $main_path/../tool_10x8.conf ]; then # tool.conf
        source $main_path/../tool_10x8.conf
        echo "Running with device_name from CGA"
    fi
elif [ $given_device != "Multiple_Devices" ]; then
    if [ "$given_device" == "GEMINI_COMPACT_10x8" ]; then
        source $main_path/../tool_10x8.conf
    elif [ "$given_device" == "GEMINI_COMPACT_62x44" ]; then
        source $main_path/../tool_62x44.conf
    elif [ "$given_device" == "GEMINI_COMPACT_82x68" ]; then
        source $main_path/../tool_82x68.conf
    elif [ "$given_device" == "GEMINI_COMPACT_104x68" ]; then
        source $main_path/../tool_104x68.conf
    else
        source $main_path/../../scripts/empty.conf
        device=$given_device
    fi
else
    if [ -f $main_path/../tool_10x8.conf ]; then # tool.conf
        source $main_path/../tool_10x8.conf
        echo "Running with bit_sim.sh variables"
    fi
fi

cd $xml_root/openfpga-pd-castor-rs 
current_tag=$(git describe --tags --abbrev=0)
latest_tag=$(git describe --tags `git rev-list --tags --max-count=1`)
if [ "$xml_tag" == "latest" ]; then
    if [ "$current_tag" == "$latest_tag" ]; then
        echo "Already on latest tag"
    else
        git checkout $latest_tag
    fi
else
    if [ "$current_tag" == "$xml_tag" ]; then
        echo "Already on $xml_tag tag"
    else
        cd $xml_root/openfpga-pd-castor-rs && git checkout $xml_tag
    fi
fi

cd $main_path

[ -d $design_name\_golden ] && rm -fr $design_name\_golden
[ -f bitstream_sim.log ] && rm -fr bitstream_sim.log
[ -f post_route_sim.log ] && rm -fr post_route_sim.log
[ -f raptor.log ] && rm -fr raptor.log
[ -f raptor_tail.log ] && rm -fr raptor_tail.log
[ -f parsed_data.json ] && rm -fr parsed_data.json
[ -f raptor_perf.log ] && rm -fr raptor_perf.log
[ -f bitstream_text.txt ] && rm -fr bitstream_text.txt

# python3 ../../scripts/gen_openfpga_script.py $design_name $vpr_file $openfpga_file $fixed_sim_openfpga_file $repack_design_constraint_file $bitstream_annotation_file $default

design_path=`find . -type f -iname "$design_name.v"`
tool_name="iverilog"

command -v raptor >/dev/null 2>&1 && raptor_path=$(which raptor) || { echo >&2 echo "First you need to source Raptor"; end_time exit; }
lib_fix_path="${raptor_path:(-11)}"
library=${raptor_path/$lib_fix_path//share/raptor/sim_models/rapidsilicon}
[[ "$raptor_path" == *"latest"* ]] && iverilog_path="${raptor_path:0:49}/HDL_simulator/iverilog/bin/" || iverilog_path="${raptor_path:0:62}/HDL_simulator/iverilog/bin/"

[ ! -d $design_name\_golden ] && mkdir $design_name\_golden 

cd $design_name\_golden

echo "create_design $design_name">raptor.tcl
echo "target_device $device">>raptor.tcl
[ -z "$vpr_file_path" ] || [ -z "$openfpga_file_path" ] && echo "" || echo "architecture $vpr_file_path $openfpga_file_path">>raptor.tcl
echo "add_include_path ../rtl">>raptor.tcl
echo "add_library_path ../rtl">>raptor.tcl  
echo "add_library_ext .v .sv">>raptor.tcl 
echo "add_design_file ../rtl/$design_name.v">>raptor.tcl
echo "set_top_module $design_name">>raptor.tcl
echo "add_simulation_file ../sim/post_route_tb/sim_route_${design_name}.sv">>raptor.tcl 
echo "set_top_testbench sim_route_${design_name}">>raptor.tcl 
[ -z "$set_device_size" ] && echo "" || echo "set_device_size $set_device_size">>raptor.tcl
[ -z "$bitstream_setting_path" ] || [ -z "$fixed_sim_openfpga_path" ] || [ -z "$repack_design_constraint_path" ] && echo "" || echo "bitstream_config_files -bitstream $bitstream_setting_path -sim $fixed_sim_openfpga_path -repack $repack_design_constraint_path">>raptor.tcl
[ -z "$set_channel_width" ] && echo "" || echo "set_channel_width $set_channel_width">>raptor.tcl
echo "add_constraint_file ../clk_constraint.sdc">>raptor.tcl  
echo "synthesize $strategy">>raptor.tcl
echo "packing">>raptor.tcl  
echo "global_placement">>raptor.tcl  
echo "place">>raptor.tcl  
echo "route">>raptor.tcl  
echo "# Open the input file in read mode">>raptor.tcl 
echo "set input_file [open \"$design_name/run_1/synth_1_1/synthesis/post_pnr_wrapper_${design_name}_post_synth.v\" r]">>raptor.tcl 
echo "# Read the file content">>raptor.tcl 
echo "set file_content [read \$input_file]">>raptor.tcl 
echo "# Close the input file after reading">>raptor.tcl 
echo "close \$input_file">>raptor.tcl 
echo "set modified_content [string map {\"module $design_name(\" \"module ${design_name}_post_route (\"} \$file_content]">>raptor.tcl 
echo "# Open the file again, this time in write mode to overwrite the old content">>raptor.tcl 
echo "set output_file [open \"$design_name/run_1/synth_1_1/synthesis/post_pnr_wrapper_${design_name}_post_synth.v\" w]">>raptor.tcl
echo "# Write the modified content back to the file">>raptor.tcl 
echo "puts \$output_file \$modified_content">>raptor.tcl 
echo "# Close the file">>raptor.tcl 
echo "close \$output_file">>raptor.tcl 
echo "puts \"Modification completed.\"">>raptor.tcl 
echo "simulation_options compilation icarus pnr" >> raptor.tcl
echo "simulate pnr icarus">>raptor.tcl
echo "sta">>raptor.tcl  
echo "power">>raptor.tcl
if [[ $internal_bitstream_simulation == true ]]
then
    echo "bitstream enable_simulation">>raptor.tcl
    echo "">>raptor.tcl
    echo "set tb_path \"../sim/bitstream_tb/bitstream_testbench.v\"">>raptor.tcl
    echo "set openfpga_tb_path \"$design_name/run_1/synth_1_1/impl_1_1_1/bitstream/BIT_SIM/fabric_$design_name\_formal_random_top_tb.v\"">>raptor.tcl
    echo "set search_line \"// ----- Can be changed by the user for his/her need -------\"">>raptor.tcl
    echo "">>raptor.tcl
    echo "set source_file [open \$tb_path r]">>raptor.tcl
    echo "set destination_file [open \$openfpga_tb_path r+]">>raptor.tcl
    echo "set search_string \$search_line">>raptor.tcl
    echo "">>raptor.tcl
    echo "set content [read \$source_file]">>raptor.tcl
    echo "close \$source_file">>raptor.tcl
    echo "set destination_lines [split [read \$destination_file] \"\n\"]">>raptor.tcl
    echo "">>raptor.tcl
    echo "set line_number_to_insert_after -1">>raptor.tcl
    echo "foreach line \$destination_lines {">>raptor.tcl
    echo "    if {[string first \$search_string \$line] != -1} {">>raptor.tcl
    echo "        set line_number_to_insert_after [expr {[lsearch \$destination_lines \$line] + 1}]">>raptor.tcl
    echo "        break">>raptor.tcl
    echo "    }">>raptor.tcl
    echo "}">>raptor.tcl
    echo "if {\$line_number_to_insert_after > 0} {">>raptor.tcl
    echo "    set destination_lines [linsert \$destination_lines \$line_number_to_insert_after \$content]">>raptor.tcl
    echo "} else {">>raptor.tcl
    echo "    puts "Search string not found in the destination file."">>raptor.tcl
    echo "}">>raptor.tcl
    echo "seek \$destination_file 0">>raptor.tcl
    echo "puts -nonewline \$destination_file [join \$destination_lines \"\n\"]">>raptor.tcl
    echo "">>raptor.tcl
    echo "close \$destination_file">>raptor.tcl
    echo "">>raptor.tcl
    echo "exec python3 ../../../scripts/bt_tb_io_update.py $design_name/run_1/synth_1_1/impl_1_1_1/bitstream/BIT_SIM/fabric_$design_name\_formal_random_top_tb.v $design_name">>raptor.tcl
    echo "exec python3 ../../../scripts/bt_tb_io_update.py $design_name/run_1/synth_1_1/impl_1_1_1/bitstream/BIT_SIM/fabric_$design_name\_top_formal_verification.v $design_name">>raptor.tcl
    echo "exec python3 ../../../scripts/bt_tb_io_update.py $design_name/run_1/synth_1_1/impl_1_1_1/bitstream/BIT_SIM/fabric_netlists.v $design_name">>raptor.tcl
    echo "">>raptor.tcl
    echo "file mkdir $design_name/run_1/synth_1_1/impl_1_1_1/bitstream/SRC/">>raptor.tcl
    echo "if {[file exists $design_name/run_1/synth_1_1/impl_1_1_1/bitstream/SRC/CustomModules]} {">>raptor.tcl
    echo "    puts \"Destination directory already exists. Skipping the copy operation.\"">>raptor.tcl
    echo "} else {">>raptor.tcl
    echo "    file copy -force ../../../openfpga-pd-castor-rs/k6n8_TSMC16nm_7.5T/CommonFiles/task/CustomModules/ $design_name/run_1/synth_1_1/impl_1_1_1/bitstream/SRC/">>raptor.tcl
    echo "}">>raptor.tcl
    echo "">>raptor.tcl
    echo "clear_simulation_files">>raptor.tcl
    echo "add_library_path ../../../openfpga-pd-castor-rs/k6n8_TSMC16nm_7.5T/CommonFiles/task/CustomModules/">>raptor.tcl
    echo "">>raptor.tcl
    echo "simulate \"bitstream_bd\" \"icarus\"">>raptor.tcl
else
    [ -z "$vpr_file_path" ] && echo "bitstream">>raptor.tcl || echo "bitstream write_xml">>raptor.tcl    # enable_simulation
fi

xml_version=`cd $xml_root/openfpga-pd-castor-rs && git describe --tags --abbrev=0`

start_raptor=`date +%s`
raptor --batch --script raptor.tcl 
end_raptor=`date +%s`
runtime_raptor=$((end_raptor-start_raptor))
echo -e "\nTotal RunTime: $runtime_raptor sec">>raptor.log
raptor --version>>raptor.log
echo -e "Netlist Version: $xml_version">>raptor.log
echo -e "Device: $device">>raptor.log

post_route_netlist_path=`find $main_path -wholename "*/routing/fabric_$design_name\_post_route.v"`

root_path=`pwd`
route_tb_path=`find ../ -type f -iname "sim_route_$design_name.sv" -printf $root_path/'%p\n'`
if [ -z "$route_tb_path" ]
then
    echo "No such Test Bench for $design_name"
else 
    echo -e "Test Bench for this design Found!"
fi
bitstream_tb_path=`find ../sim -type f -iname "$design_name\_include_netlists.v" -printf $root_path/'%p\n'`
if [ -z "$bitstream_tb_path" ]
then
    echo "No such Test Bench for $design_name"
else 
    echo -e "Test Bench for this design Found!"
fi


if [ "$simulator_name" == "iverilog" ] || [ "$simulator_name" == "vcs" ]; then 
    string="_post_route"
    while read line; do
            if [[ $(echo "$line" | cut -d "(" -f1)  == "module fabric_$design_name " ]]; 
            then
                sed -i "s/module fabric_$design_name/module fabric_$design_name\_post_route/" $post_route_netlist_path
                break 2
            fi
            if [[ $(echo "$line" | cut -d "(" -f1)  == "module fabric_$design_name$string " ]]; 
            then
                break 2
            fi
    done < $post_route_netlist_path

    bram_sim=`find $library -wholename "*/genesis3/brams_sim.v"`    
    cell_path=`find $library -wholename "*/genesis3/cells_sim.v"`
    dsp_sim=`find $library -wholename "*/genesis3/dsp_sim.v"`
    dsp_map=`find $library -wholename "*/genesis3/dsp_map.v"`
    dsp_final_map=`find $library -wholename "*/genesis3/dsp_final_map.v"`
    lut_map=`find $library -wholename "*/genesis3/simlib.v"`
    TDP18K_FIFO=`find $library -wholename "*/genesis3/TDP18K_FIFO.v"`
    ufifo_ctl=`find $library -wholename "*/genesis3/ufifo_ctl.v"`
    sram1024x18=`find $library -wholename "*/genesis3/sram1024x18.v"`
    primitive=`find $library -wholename "*/genesis3/primitives.v"`

    python3 ../../../scripts/post_route_script.py $design_name

    if [[ $simulator_name == "vcs" ]]
    then
        [ ! -d $design_name\_$tool_name\_post_route_files ] && mkdir $design_name\_$tool_name\_post_route_files
        [ -d $design_name\_$tool_name\_post_route_files ] && cd $design_name\_$tool_name\_post_route_files
        start_post_route=`date +%s`
        timeout 4m vcs -sverilog -timescale=1ns/1ps $cell_path $bram_sim $lut_map $TDP18K_FIFO $ufifo_ctl $sram1024x18 $dsp_sim $primitive ../../rtl/$design_name.v $post_route_netlist_path $route_tb_path +incdir+$directory_path -y $directory_path +libext+.v +define+VCS_MODE=1 -full64 -debug_all -lca -kdb | tee post_route_sim.log
        ./simv | tee -a post_route_sim.log
        end_post_route=`date +%s`
        runtime_post_route=$((end_post_route-start_post_route))
        echo -e "\nTotal RunTime: $runtime_post_route sec">>post_route_sim.log
    fi

    if [[ $simulator_name == "iverilog" ]]
    then
        [ ! -d $design_name\_$simulator_name\_post_route_files ] && mkdir $design_name\_$simulator_name\_post_route_files
        [ -d $design_name\_$simulator_name\_post_route_files ] && cd $design_name\_$simulator_name\_post_route_files
        start_post_route=`date +%s`
        iverilog -g2012 -DIVERILOG=1 -o $design_name $cell_path $primitive ../../rtl/$design_name.v $post_route_netlist_path $route_tb_path -y $main_path/rtl && vvp ./$design_name | tee post_route_sim.log
        end_post_route=`date +%s`
        runtime_post_route=$((end_post_route-start_post_route))
        echo -e "\nTotal RunTime: $runtime_post_route sec">>post_route_sim.log
    fi

    while read line; do
            if [[ $line == *"All Comparison Matched"* ]]
            then
                rm -fr tb.vcd
            fi
            if [[ $line == *"Error: Simulation Failed"* ]]
            then
                vcd2fst tb.vcd tb.fst --compress
                rm -fr tb.vcd
            fi
    done < post_route_sim.log
    cd ..
fi

if [ ! -e "../post_route_sim.log" ]; then
    touch "../post_route_sim.log"
fi

if [ "$simulator_name" == "" ]; then cp "$design_name/run_1/synth_1_1/impl_1_1_1/simulate_pnr/simulation_pnr.rpt" "../post_route_sim.log"
fi

if [[ $external_bitstream_simulation == true ]]
then
    [ ! -d $design_name\_$tool_name\_bitstream_sim_files ] && mkdir $design_name\_$tool_name\_bitstream_sim_files
    [ -d $design_name\_$tool_name\_bitstream_sim_files ] && cd $design_name\_$tool_name\_bitstream_sim_files

    cd ../../..
    if [ -d "SRC" ] 
    then
        echo "SRC folder already exists" 
    else
        . ../scripts/change_netlist_dir_10x8.sh
    fi
    cd $design_name/$design_name\_golden/$design_name\_$tool_name\_bitstream_sim_files

    python3 ../../../../scripts/force.py $design_name
    
    start_bitstream=`date +%s`
    # timeout 20m vcs -sverilog $bitstream_tb_path -full64 -debug_all -lca -kdb | tee bitstream_sim.log
    # ./simv | tee -a bitstream_sim.log
    $iverilog_path/iverilog -g2012 -DIVERILOG=1 -o $design_name $bitstream_tb_path | tee bitstream_sim.log
    $iverilog_path/vvp ./$design_name | tee bitstream_sim.log
    end_bitstream=`date +%s`
    runtime_bitstream=$((end_bitstream-start_bitstream))
    echo -e "\nTotal RunTime: $runtime_bitstream sec">>bitstream_sim.log

    cd $main_path
    [ -f $design_name\_golden/$design_name\_$tool_name\_bitstream_sim_files/bitstream_sim.log ] && mv ./$design_name\_golden/$design_name\_$tool_name\_bitstream_sim_files/bitstream_sim.log . || echo -e "\n">bitstream_sim.log
else
    echo "External Bitstream Simulation is Not Enabled"
fi

# [ -f $design_name\_golden/$design_name\_$simulator_name\_post_route_files/post_route_sim.log ] && mv ./$design_name\_golden/$design_name\_$simulator_name\_post_route_files/post_route_sim.log . || echo -e "\n">post_route_sim.log

if [ ! -e "../bitstream_sim.log" ]; then
    touch "../bitstream_sim.log"
fi

if [ internal_bitstream_simulation==true ]; then cp "$design_name/run_1/synth_1_1/impl_1_1_1/simulate_bitstream/simulation_bitstream_back.rpt" "../bitstream_sim.log"
fi

cd $main_path
mv ./$design_name\_golden/raptor.log .
mv ./$design_name\_golden/raptor_perf.log .

tail -n100 raptor.log > raptor_tail.log

python3 ../../scripts/parser.py 

