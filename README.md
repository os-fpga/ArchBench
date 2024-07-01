# ArchBench TEST

Designs to test new architecture are added in this repo. Whenever a change in architecture comes, action will get triggered to test the new changes and allow this pull request to be merged.

all_run.sh is a bash script that triggers the run. If you want to provide another path for the architecture, you can pass that path to this file at 'arch_files'. 

Each testcase contain there own bit_sim.sh which generates the raptor.tcl for Raptor and then runs the Raptor. It also triggers VCS for post_route simulation and bitstream_simulation

### tool.conf:

There are two device model files:

    1) tool_10x8.conf for GEMINI_COMPACT_10x8
    2) tool_82x68.conf for GEMINI_COMPACT_82x68

We are providing paths to the architecture files in these two files.

### Submodules:

Clone the repo with command: git clone git@github.com:RapidSilicon/ArchBench.git

Once you clone the repo, you should initialize the openfpga_pd_castor_rs repo using this command: 

    cd openfpga-pd-castor-rs && git submodule update --init && git checkout main && git pull origin main && git pull origin --tags
 
There is make file that clones sub_repo openfpga-pd-castor-rs repo and checkout on main branch.

### test.config:

There are two flags in test.config of each testcase which differentiates the Functional regression and QoR regression. Details are as following:

    reg_type=1   means QoR   
    reg_type=2   means Functional Verification
    stage_id=1   means yosys
    stage_id=2   means VPR (fmax)
    stage_id=3   means both yosys/VPR
    stage_id=4   means Functional Verification
 
stage_id=1 means just synthesis, 4 mean Funtional Verification and else mean VPR

