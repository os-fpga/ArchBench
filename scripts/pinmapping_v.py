import os
import subprocess
import pandas as pd
from lxml import etree as ET
import sys

def restructure(design_name,netlist='SRC',ver='v1.6.131',size='10x8',bl='backdoor'):
    run_dir = f"/nfs_project/castor/castor_release/{ver}/k6n8_TSMC16nm_7.5T/FPGA{size}_gemini_compact_latch_pnr/"
    command = f"python3 ../../../../scripts/repath_fb.py {run_dir}/_run_dir/SRCphys/grouping.tcl {run_dir}/physmap.csv ../{design_name}/run_1/synth_1_1/impl_1_1/bitstream/fabric_bitstream.xml"
    if bl == 'backdoor':
        BL_WIDTH = 514
        if size == '104x68':
            BL_WIDTH = 5273
        with open(f"../{design_name}/run_1/synth_1_1/impl_1_1/bitstream/fabric_bitstream.bit",'r') as rs:
            with open(f"../{design_name}/bitline_words.txt",'w') as blf:
                for line in rs.readlines():
                    if '//' not in line:
                        blf.write(line[:BL_WIDTH]+"\n")

    if netlist == 'SRCphys':
        with open(f"../{design_name}/restructured_fabric_bitstream.xml",'w') as rs:
            if(subprocess.run(command.split(), stdout=rs).returncode == 0):
                return True
    else:
        return True
    return False


def gen_pinmapping(design_name,size='104x68',ver='v1.6.145.C',netlist='SRC'):
    pf = open(f"../{design_name}/PinMapping.v", 'w')
    PinMapping =  f"../{design_name}/run_1/synth_1_1/impl_1_1/bitstream/PrimaryPinMapping.xml"
    
    PinMappingcsv = f"/nfs_project/castor/castor_release/{ver}/k6n8_TSMC16nm_7.5T/FPGA{size}_gemini_compact_latch_pnr/pinMapping.csv"
    PinMappingSub = f"/nfs_project/castor/castor_release/{ver}/k6n8_TSMC16nm_7.5T/FPGA{size}_gemini_compact_latch_pnr/pinMappingSub.csv"
    # PinMappingcsv = f"../src/ip/rigel_fabric/{ver}/k6n8_TSMC16nm_7.5T/FPGA{size}_gemini_compact_latch_pnr/pinMapping.csv"
    # PinMappingSub = f"../src/ip/rigel_fabric/{ver}/k6n8_TSMC16nm_7.5T/FPGA{size}_gemini_compact_latch_pnr/pinMappingSub.csv"

    tree = ET.parse(PinMapping)
    root = tree.getroot()
    
    if netlist == 'SRCphys':
        df = pd.read_csv(PinMappingcsv, header=None, index_col=0, squeeze = True)
        d = df.to_dict()
        dfsub = pd.read_csv(PinMappingSub, header=None, index_col=0, squeeze = True)
        dsub = dfsub.to_dict()
       
        for child in root.iter('io'):
            a = child.attrib['name']
            pinxml = a.split('[')[0]+'['+a.split('[')[1].split(':')[0]+']'
            if pinxml not in d:
                pintop = dsub[pinxml]
            else:
                pintop = d[pinxml]
            if (child.attrib['dir'] == 'input'):
                pf.write(f" force `RTL_PATH_FPGA_TOP.{pintop} = {child.attrib['net']};\n")
            elif (child.attrib['dir'] == 'output'):
                pf.write(f" force {child.attrib['net']} = `RTL_PATH_FPGA_TOP.{pintop};\n")
        pf.close()
    else:
        for child in root.iter('io'):
            if (child.attrib['dir'] == 'input'):
                pf.write(f" force `RTL_PATH_FPGA_TOP.{child.attrib['name']} = {child.attrib['net']};\n")
            elif (child.attrib['dir'] == 'output'):
                pf.write(f" force {child.attrib['net']} = `RTL_PATH_FPGA_TOP.{child.attrib['name']};\n")
        pf.close()

design_name=sys.argv[1]
size=sys.argv[2]
ver=sys.argv[3]
netlist=sys.argv[4]
bl="backdoor"

if(restructure(design_name,netlist,ver,size,bl) == True):
    gen_pinmapping(design_name,size,ver,netlist)