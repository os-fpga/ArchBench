#Owner: Abdul Hameed Akram
#Dated: 02/02/2023
#Description: This code reads in a combines the data of all log files and a mapping of keywords for each file
           #  is done according to the key mapping based on design name.

import json
import os

# prefix = sys.argv[1]
main_path = os.getcwd()
files_json = []
for root, dirs, files in os.walk(main_path):
    if "parsed_data.json" in files:
        files_json.append(os.path.join(root, "parsed_data.json"))
        
# print(files_json)
# Create an empty dictionary
data_final = {}

for i in files_json:
    # Extract the basename of the file as the key
    key = os.path.basename(os.path.normpath(os.path.split(i)[0]))
    # print(key) # Output: "and"

    # Read the contents of the file
    with open(i, 'r') as f:
        contents = json.load(f)

    # Add the key and value to the final dictionary
    data_final[key] = contents

# filename_final = prefix + "_data_final.json"

# Write the final dictionary to a JSON file
with open('new_data.json', 'w') as f:
    json.dump(data_final, f, indent=4)