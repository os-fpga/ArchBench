 


# Get the name of the current directory
current_directory=$(basename "$PWD")

log=./ab_run_summary.log

totalran=`find -name "raptor.log" |sort --unique | wc -l`
echo "found all runs"
allcomp=`find -name "raptor.log" |sort --unique | xargs grep -l "ERROR:" | sort --unique | xargs tail -n20 | grep "ERROR:" | grep "SYN:\|PAC:\|RTE:\|TIM:\|ANL:\|BIT:" | wc -l`
echo "found all compile error"
anl=`find -name "raptor.log" |sort --unique | xargs grep -l "ERROR:" | sort --unique | xargs tail -n20 | grep "ERROR:" | grep "ANL:" | wc -l`
echo "found analyze error"
syn=`find -name "raptor.log" |sort --unique | xargs grep -l "ERROR:" | sort --unique | xargs tail -n20 | grep "ERROR:" | grep "SYN:" | wc -l `
syn_dlatch=`find -name "raptor.log" |sort --unique | xargs grep -l "ERROR:" | sort --unique | xargs tail -n20 | grep "ERROR:" | grep "DLATCH" | wc -l`
syn_mem=`find -name "raptor.log" |sort --unique | xargs grep -l "ERROR:" | sort --unique | xargs tail -n20 | grep "ERROR:" | grep "no valid mapping found for memory" | wc -l`
syn_dff=`find -name "raptor.log" |sort --unique | xargs grep -l "ERROR:" | sort --unique | xargs tail -n20 | grep "ERROR:" | grep "Generic DFFs" | wc -l `
echo "found all synthesis error"
pac=`find -name "raptor.log" |sort --unique | xargs grep -l "ERROR:" | sort --unique | xargs tail -n20 | grep "ERROR:" | grep "PAC: Design" | wc -l `
echo "found all packing error"
rte=`find -name "raptor.log" |sort --unique | xargs grep -l "ERROR:" | sort --unique | xargs tail -n20 | grep "ERROR:" | grep "RTE:" | wc -l`
echo "found all routing error"
tim=`find -name "raptor.log" |sort --unique | xargs grep -l "ERROR:" | sort --unique | xargs tail -n20 | grep "ERROR:" | grep "TIM:" | wc -l`
echo "found all sta error"
bit=`find -name "raptor.log" |sort --unique | xargs grep -l "ERROR:" | sort --unique | xargs tail -n20 | grep "ERROR:" | grep "BIT:" | wc -l`
echo "found all bitstream error"
prsim=`find -name "post_route_sim.log" |sort --unique | xargs grep "Error:" | wc -l`
pbsim=`find -name "bitstream_sim.log" |sort --unique | xargs grep "error" | wc -l`

totalfail=`expr $allcomp + $prsim`
totalpass=`expr $totalran - $totalfail`

echo -e "\n" > $log
echo "Total test ran: $totalran" >> $log
echo "Total Compile failures: $allcomp" >> $log
echo "          ANL Failures: $anl" >> $log
echo "          SYN Failures: $syn" >> $log
echo "                        SYN DLATCH Failures: $syn_dlatch" >> $log
echo "                        SYN mem mapping Failures: $syn_mem" >> $log
echo "                        SYN Async SR Failures: $syn_dff" >> $log
echo "          PAC Failures: $pac" >> $log
echo "          RTE Failures: $rte" >> $log
echo "          BIT Failures: $bit" >> $log
echo "          TIM Failures: $tim" >> $log
echo "Total Post Route Sim Failures: $prsim" >> $log
echo "Total Post Bitstream Sim Failures: $pbsim" >> $log

echo -e "\n" >> $log
echo -e "\n" >> $log

echo "======================================================" >> $log
echo "-------    all compile failure logs    ---------------" >> $log
echo "======================================================" >> $log
echo -e "\n" >> $log
find -name "raptor.log" |sort --unique | xargs grep -l "ERROR:" | sort --unique | xargs tail -n20 | grep "==>\|ERROR:" | grep "ANL:" -B1 | sed "s~==> .~==> https://cga.rapidsilicon.com/wwwroot/toolslog/parsed_logs/${current_directory}~g" | sed 's/==/==========/g'  >> $log
find -name "raptor.log" |sort --unique | xargs grep -l "ERROR:" | sort --unique | xargs tail -n20 | grep "==>\|ERROR:" | grep "SYN:" -B2 | sed "s~==> .~==> https://cga.rapidsilicon.com/wwwroot/toolslog/parsed_logs/${current_directory}~g" | sed 's/==/==========/g'  >> $log
find -name "raptor.log" |sort --unique | xargs grep -l "ERROR:" | sort --unique | xargs tail -n20 | grep "==>\|ERROR:" | grep "PAC: Design" -B1 | sed "s~==> .~==> https://cga.rapidsilicon.com/wwwroot/toolslog/parsed_logs/${current_directory}~g" | sed 's/==/==========/g'  >> $log
find -name "raptor.log" |sort --unique | xargs grep -l "ERROR:" | sort --unique | xargs tail -n20 | grep "==>\|ERROR:" | grep "RTE:" -B1 | sed "s~==> .~==> https://cga.rapidsilicon.com/wwwroot/toolslog/parsed_logs/${current_directory}~g" | sed 's/==/==========/g'  >> $log
find -name "raptor.log" |sort --unique | xargs grep -l "ERROR:" | sort --unique | xargs tail -n20 | grep "==>\|ERROR:" | grep "BIT:" -B1 | sed "s~==> .~==> https://cga.rapidsilicon.com/wwwroot/toolslog/parsed_logs/${current_directory}~g" | sed 's/==/==========/g'  >> $log
find -name "raptor.log" |sort --unique | xargs grep -l "ERROR:" | sort --unique | xargs tail -n20 | grep "==>\|ERROR:" | grep "TIM:" -B1 | sed "s~==> .~==> https://cga.rapidsilicon.com/wwwroot/toolslog/parsed_logs/${current_directory}~g" | sed 's/==/==========/g'  >> $log

echo -e "\n" >> $log
echo -e "\n" >> $log
echo -e "\n" >> $log
echo "======================================================" >> $log
echo "---    all post Route simulation failure logs    -----" >> $log
echo "======================================================" >> $log
echo -e "\n" >> $log
find -name "post_route_sim.log" |sort --unique | xargs grep "Error:" | awk -F "post_route_sim.log" '{print $1"post_route_sim.log","<==\n",$2}' | sed "s~^\./~==> https://cga.rapidsilicon.com/wwwroot/toolslog/parsed_logs/${current_directory}/~g" $1 | sed 's/post_synth_sim.log/post_synth_sim.log <==/g' | sed 's/==/==========/g' >> $log

echo "======================================================" >> $log
echo "---    all post bitstream simulation failure logs    -----" >> $log
echo "======================================================" >> $log
echo -e "\n" >> $log
find -name "bitstream_sim.log" |sort --unique | xargs grep "error" | awk -F "bitstream_sim.log" '{print $1"bitstream_sim.log","<==\n",$2}' | sed "s~^\./~==> https://cga.rapidsilicon.com/wwwroot/toolslog/parsed_logs/${current_directory}/~g" $1 | sed 's/post_synth_sim.log/post_synth_sim.log <==/g' | sed 's/==/==========/g'  >> $log

cat $log
