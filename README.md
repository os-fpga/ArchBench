# ArchBench

Designs to test new architecture are added in this repo. Whenever a change in architecture comes, action will get triggered to test the new changes and allow this pull request to be merged.

all_run.sh is a bash script that triggers the run. If you want to provide another path for the architecture, you can pass that path to this file at 'arch_files'. 

Each testcase contain there own bit_sim.sh which generates the raptor.tcl for Raptor and then runs the Raptor. It also triggers VCS for post_route simulation and bitstream_simulation
