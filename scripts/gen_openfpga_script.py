import os
import subprocess 
import sys

import xml.etree.ElementTree as ET
import shutil

from argparse import ArgumentParser
from xml.dom import minidom
import multiprocessing as mp
import time


#================================== Using The Script ==========================================
# Arguments:
#   pcf:    (0,1) create a place file in design folder and set this to 1 to apply constarints
#   netlist:(SRC, SRCOriginal) SRC is the restructured netlist and SRCOriginal is Fabric RTL
#   ftype:  (verilog, blif,sv) generate bitstream from verilog source or blif netlist
#   size:   (10x8, full) generate netlist for fabric size 10x8 or full(82x68)
#   design: design directory name (keep the name of design directory, design files, and top module
#           same with their respective extensions)
#           You can also pass a file with design names to initiate multiple bitstreams generation
#           in parallel.
#           $ python3 simulate_desin.py --design design.file
#           The file should contain design names in the following format,
#           <design name>   <size>  <pcf>   <ftype>   <tcl> 
#           For example some lines of a file are as shown below
#           . and            10x8    0       blif       1
#           . counter        full    1      verilog     0
#           . shift_reg      10x8    0        sv        0
#==============================================================================================

# parser = ArgumentParser()

# parser.add_argument('--pcf', choices=['0','1'],default='0')
# parser.add_argument('--design' ,required=True)
# parser.add_argument('--netlist', choices=['SRC', 'SRCOriginal'], default='SRC')
# parser.add_argument('--ftype', choices=['verilog', 'blif','sv'], default='verilog')
# parser.add_argument('--size', choices=['10x8', 'full'], default='10x8')
# parser.add_argument('--tcl', choices=['0', '1'], default='0')
# args = parser.parse_args()      

# Design Verification Directory
DV = os.getcwd() + "/../../../"
# IPs directory
IP = os.getcwd() + "/../../src/IPs/openfpga-pd-castor-rs/k6n8_TSMC16nm_7.5T/FPGA10x8_dp_castor_pnr/"
root = DV + "uvm_fabric_verif_env/src/Designs/"

# ================= get raptor path ========================
command = "which raptor"
p = subprocess.Popen(command.split(),stdout=subprocess.PIPE)
out = p.wait()
RAPTOR_PATH = os.path.dirname(os.path.dirname(p.stdout.read().decode('utf-8')[:-1]))
# print(RAPTOR_PATH)
CURRENT_PATH=os.getcwd()
# print(CURRENT_PATH)
# ==========================================================

def update_custom_openfpga_script(design_dir,design_name, ftype='verilog', pcf=0, size='10x8',netlist='SRC'):
    # print(design_dir)
    netfile = "#"
    plfile = "#"
    rfile = "#"
    pcf_file_option = "#"
    design_input = ""
    crkt = "verilog"
    device = "castor10x8_heterogeneous"
    if netlist == 'SRC':
        fabric_key = os.getcwd() + "/10_8_updated_yaml_paths/output_fabric_key.xml"
    else:
        fabric_key = os.getcwd() + "/10_8_updated_yaml_paths/fabric_key.xml"
    if size == 'full':
        fabric_key = os.getcwd() + "/82_68_updated_yaml_paths/output_fabric_key.xml"
        device =  "castor82x68_heterogeneous"
    if(ftype == 'blif'):
        design_input = f"../{design_name}.blif"
        crkt = "blif"
    else:
        netfile = f"--net_file {design_name}_post_synth.net"
        plfile = f"--place_file {design_name}_post_synth.place"
        rfile = f"--route_file {design_name}_post_synth.route"
        design_input = f"{design_name}_post_synth.v"
    if pcf == 1:
        pcf_file_option = f"--fix_clusters ../{design_name}.place"
    of = open("../../scripts/generate_testbench.openfpga",'r')
    openfpga_file= of.read()
    file_content = openfpga_file.format(vpr_file,design_input,pcf_file_option,device,netfile,plfile,rfile,crkt,openfpga_file,f"{design_name}_fabric_bitstream.xml",\
        f"fabric_bitstream.bit")
    file_content = file_content.replace("RAPTOR_PATH",RAPTOR_PATH)
    if size == 'full':
        file_content = file_content.replace("gemini_10x8","gemini")
    of.close()
    design_openfpga_script = os.path.join(design_dir,f"{design_name}_custom.openfpga")
    dos = open(design_openfpga_script,'w+')
    dos.write(file_content)
    dos.close()
    return design_openfpga_script

pcf=0
ftype='verilog'
size='10x8'
netlist='SRC'
design_name = sys.argv[1]
vpr_file = sys.argv[2]
openfpga_file = sys.argv[3]
# print(vpr_file)
# print(openfpga_file)
design_dir = os.getcwd()
print(design_name)
# design_dir = design_files_exits(design_name, ftype, pcf)
# print(design_dir)
design_openfpga_script = update_custom_openfpga_script(design_dir,design_name, ftype, pcf, size, netlist)