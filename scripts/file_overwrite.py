import sys

def overwrite_file(source_file, destination_file):
    try:
        with open(source_file, 'r') as src_file:
            file_data = src_file.read()

        with open(destination_file, 'w') as dest_file:
            dest_file.write(file_data)
        
        print(f"Content of '{source_file}' has been successfully written to '{destination_file}'.")

    except FileNotFoundError:
        print("One or both of the specified files does not exist.")

import re

def search_and_copy(input_file):

    pattern = r'\$(\w+)\$(\w+)\.cc:(\d+):execute\$(\d+)_gfpga;'

    regex = re.compile(pattern)
    list=[]

    with open(input_file, 'r') as infile:
        lines = infile.readlines()
        for line in lines:
            if regex.search(line):
                list.append(line)

    modified_list=[]
    for item in list:
        modified_item = item.replace('$auto', r'\$auto').replace(';', ' ;')
        modified_list.append(modified_item)

    second_modified_list=[]
    for item2 in modified_list:
        modified_item2 = item2.split(" ")[2]
        second_modified_list.append(modified_item2)

    processed_list = [item.lstrip('\t').rstrip('\n') for item in modified_list]
    second_modified_list_two=['\t' + item + ' ,' for item in second_modified_list]

    return processed_list, second_modified_list_two

def update_wires(output_file,modified_list,second_modified_list_two):

    with open(output_file, 'r') as outfile:
        lines = outfile.readlines()

    wire = re.compile(r'.*Wires.*')
    wire_instance = re.compile(r'.*Wire_instance.*')

    new_lines=[]

    for i,line in enumerate(lines):
        new_lines.append(line)
        if wire.search(line):
            new_lines.extend([item + '\n' for item in modified_list])
        if wire_instance.search(line):
            new_lines.extend([item2 + '\n' for item2 in second_modified_list_two])

    with open(output_file, 'w') as file:
        file.writelines(new_lines)

wire_list,instance_list = search_and_copy(sys.argv[2])
overwrite_file(sys.argv[1],sys.argv[2])
update_wires(sys.argv[2],wire_list,instance_list)