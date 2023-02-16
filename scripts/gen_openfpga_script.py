import os
import subprocess 
import sys

import xml.etree.ElementTree as ET
import shutil

from argparse import ArgumentParser
from xml.dom import minidom
import multiprocessing as mp
import time

DV = os.getcwd() + "/../../../"
IP = os.getcwd() + "/../../src/IPs/openfpga-pd-castor-rs/k6n8_TSMC16nm_7.5T/FPGA10x8_dp_castor_pnr/"
root = DV + "uvm_fabric_verif_env/src/Designs/"

# ================= get raptor path ========================
command = "which raptor"
p = subprocess.Popen(command.split(),stdout=subprocess.PIPE)
out = p.wait()
RAPTOR_PATH = os.path.dirname(os.path.dirname(p.stdout.read().decode('utf-8')[:-1]))
# print(RAPTOR_PATH)
CURRENT_PATH=os.getcwd()
# print("CURRENT_PATH",CURRENT_PATH)
# ==========================================================

# def update_custom_openfpga_script(design_dir,design_name, ftype='verilog', pcf=0, size='10x8',netlist='SRC'):
#     netfile = "#"
#     plfile = "#"
#     rfile = "#"
#     pcf_file_option = "#"
#     design_input = ""
#     file_content = ""
#     crkt = "verilog"
#     device = "castor10x8_heterogeneous"
#     if netlist == 'SRC':
#         fabric_key = os.getcwd() + "/10_8_updated_yaml_paths/output_fabric_key.xml"
#     else:
#         fabric_key = os.getcwd() + "/10_8_updated_yaml_paths/fabric_key.xml"
#     if size == 'full':
#         fabric_key = os.getcwd() + "/82_68_updated_yaml_paths/output_fabric_key.xml"
#         device =  "castor82x68_heterogeneous"
#     if(ftype == 'blif'):
#         design_input = f"../{design_name}.blif"
#         crkt = "blif"
#     else:
#         netfile = f"--net_file {design_name}_post_synth.net"
#         plfile = f"--place_file {design_name}_post_synth.place"
#         rfile = f"--route_file {design_name}_post_synth.route"
#         design_input = f"{design_name}_post_synth.v"
#     if pcf == 1:
#         pcf_file_option = f"--fix_clusters ../{design_name}.place"
#     if default==1:
#         of = open("../../scripts/generate_testbench.openfpga",'r')
#         openfpga_file= of.read()
#         file_content = openfpga_file.format(vpr_file,design_input,pcf_file_option,device,netfile,plfile,rfile,crkt,openfpga_f,fixed_sim_openfpga_file,bitstream_annotation_file,repack_design_constraint_file,f"fabric_bitstream.xml",\
#             f"fabric_bitstream.bit")
#         file_content = file_content.replace("CURRENT_PATH",CURRENT_PATH+"/"+design_name+"_golden")
#         if size == 'full':
#             file_content = file_content.replace("gemini_10x8","gemini")
#         of.close()
#     else:
#         of = open("../../scripts/openfpga_template_flags.openfpga",'r')
#         openfpga_file= of.read()
#         file_content = openfpga_file.format(vpr_file,design_input,pcf_file_option,device,netfile,plfile,rfile,crkt,openfpga_f,fixed_sim_openfpga_file,bitstream_annotation_file,repack_design_constraint_file,f"fabric_bitstream.xml",\
#             f"fabric_bitstream.bit")
#         if size == 'full':
#             file_content = file_content.replace("gemini_10x8","gemini")
#         of.close()
#     design_openfpga_script = os.path.join(design_dir,f"{design_name}_custom.openfpga")
#     dos = open(design_openfpga_script,'w+')
#     dos.write(file_content)
#     dos.close()
#     return design_openfpga_script

def update_custom_openfpga_script(design_dir,design_name, ftype='verilog', pcf=0, size='10x8',netlist='SRC'):
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
    file_content = openfpga_file.format(design_input,pcf_file_option,device,netfile,plfile,rfile,crkt,"fabric_bitstream.xml",\
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
print(design_name)
design_dir = os.getcwd()
vpr_file=sys.argv[2]
openfpga_f=sys.argv[3]
fixed_sim_openfpga_file=sys.argv[4]
repack_design_constraint_file=sys.argv[5]
bitstream_annotation_file=sys.argv[6]
default=int(sys.argv[7])
design_openfpga_script = update_custom_openfpga_script(design_dir,design_name, ftype, pcf, size, netlist)