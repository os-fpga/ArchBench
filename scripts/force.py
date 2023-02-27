import xml.etree.ElementTree as ET
import sys

design_name= sys.argv[1]
netlist="SRC"

PinMapping =  f"../{design_name}/PinMapping.xml"
tree = ET.parse(PinMapping)
root = tree.getroot()
pf = open(f"../{design_name}/PinMapping.v", 'w')
for child in root.iter('io'):
    if (child.attrib['dir'] == 'input'):
        if(netlist == 'SRC'):
            pf.write(f" assign {child.attrib['name']} = {child.attrib['net']};\n")
        else:
            pf.write(f" assign {child.attrib['name']} = {child.attrib['net']};\n")
    elif (child.attrib['dir'] == 'output'):
        if(netlist == 'SRC'):
            pf.write(f" assign {child.attrib['net']} = {child.attrib['name']};\n")
        else:
            pf.write(f" assign {child.attrib['net']} = {child.attrib['name']};\n")
pf.close()

output_file = open("../../bitstream_text.txt", "w")

with open(f"../{design_name}/fabric_bitstream.xml",'r') as f:
    for line in f:
        if "path=" in line:
            path=line.split('"')[5]
            value=line.split('"')[3]
            fpga_top="force "+path+" = "+value+";\n"
            fpga_inst = fpga_top.replace("fpga_top","U0_formal_verification")
            output_file.write(fpga_inst)

output_file.close()