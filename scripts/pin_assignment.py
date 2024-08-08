import xml.etree.ElementTree as ET
import re
import sys
import os

design_name= sys.argv[1]

with open(f'../{design_name}/run_1/synth_1_1/impl_1_1_1/bitstream/PrimaryPinMapping.xml', 'r') as file:
    lines = file.readlines()

with open(f'../{design_name}/run_1/synth_1_1/impl_1_1_1/bitstream/PrimaryPinMapping.xml', 'w') as file:
    for line in lines:
        modified_line = line.replace("$iopadmap$", "")
        file.write(modified_line)

with open(f'../{design_name}/run_1/synth_1_1/impl_1_1_1/bitstream/PrimaryPinMapping.xml', 'r') as file:
    xml_data = file.read()

root = ET.fromstring(xml_data)

pin_assignments = {}
output_pin_assignments = []

for io in root.findall('io'):
    name = io.get('name')
    net = io.get('net')
    dir = io.get('dir')
    if 'gfpga_pad_QL_PREIO_A2F' in name:
        pin_range = name.split('[')[1].split(']')[0]
        if ':' in pin_range:
            start_pin, end_pin = map(int, pin_range.split(':'))
            for pin in range(start_pin, end_pin + 1):
                pin_assignments[pin] = net
        else:
            pin_assignments[int(pin_range)] = net
    elif 'gfpga_pad_QL_PREIO_F2A' in name:
        output_pin_assignments.append(f"assign {net} = {name};\n")

max_pin = max(pin_assignments.keys())
for pin in range(max_pin + 1):
    if pin not in pin_assignments:
        pin_assignments[pin] = '0'

verilog_file_path = '../../sim/bitstream_tb/'+design_name+'_formal_random_top_tb.v'
with open(verilog_file_path, 'r') as verilog_file:
    for line in verilog_file:
        match = re.match(r'\t+wire\s+\[(\d+):(\d+)\]\s+gfpga_pad_QL_PREIO_A2F;', line)
        if match:
            total_pins = int(match.group(2))
            break

with open(f'../{design_name}/pin_assignments.v', 'w') as verilog_file:
    verilog_file.write(f"// Pin Assignments for {design_name}\n\n")
    for pin in range(total_pins + 1):
        if pin in pin_assignments:
            net = pin_assignments[pin]
            if net != '0':
                verilog_file.write(f"assign gfpga_pad_QL_PREIO_A2F[{pin}:{pin}] = {net};\n")
            else:
                verilog_file.write(f"assign gfpga_pad_QL_PREIO_A2F[{pin}:{pin}] = {net};\n")
        else:
            verilog_file.write(f"assign gfpga_pad_QL_PREIO_A2F[{pin}:{pin}] = 0;\n")

with open(f'../{design_name}/pin_assignments.v', 'a') as verilog_file:
        for i in output_pin_assignments:
            verilog_file.write(i)

with open(f'../{design_name}/pin_assignments.v', 'r') as file:
    content = file.readlines()

    # assign_pattern = r'assign\s+\$auto\$\w+\.cc:\d+:\w+\$\d+\s+=\s+\w+\[\d+:\d+\];'
    assign_pattern = r'assign\s+\$auto_\d+\s+=\s+\w+\[\d+:\d+\];'

    assign_regex = re.compile(assign_pattern)

    modified_content = []

    for line in content:
        if re.match(assign_regex, line):
            modified_content.append('// ' + line.strip() + '\n')
        else:
            modified_content.append(line)

with open(f'../{design_name}/pin_assignments.v', 'w') as file:
        file.writelines(modified_content)
