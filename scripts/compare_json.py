#Owner: Abdul Hameed Akram
#Dated: 02/02/2023
#Description: This code compares the keys of two JSON file 
#             and output test pass/fail status according to the 
#             delta variation set here.
import json
import sys

def compare_jsons(golden_json_file, new_json_file):
    with open(golden_json_file, 'r') as f:
        golden_json = json.load(f)
    with open(new_json_file, 'r') as f:
        new_json = json.load(f)
    
    for key in golden_json:
        design_name=key
        if key not in new_json:
            print("key " +key+ " not present in new_data.json")
            return

        for sub_key in golden_json[key]:
            file_name=sub_key
            for last_key in golden_json[key][sub_key]:
                if new_json[key][sub_key][last_key] == "Fail" or new_json[key][sub_key][last_key] == "N/A":
                    print(str(file_name) + " in " + design_name +" failed")
                    return

                if last_key == "Runtime":
                    if golden_json[key][sub_key][last_key] and " sec" in golden_json[key][sub_key][last_key]:
                        g_value = int(golden_json[key][sub_key][last_key].split(" sec")[0])
                        delta_runtime = 0.1 * g_value
                    if new_json[key][sub_key][last_key] and " sec" in new_json[key][sub_key][last_key]:
                        n_value = int(new_json[key][sub_key][last_key].split(" sec")[0])  
                    # g_value = int(golden_json[key][sub_key][:-4])
                    # n_value = int(new_json[key][sub_key][:-4])
                    if abs(g_value - n_value) > delta_runtime:
                        print("Runtime difference in " +design_name+ " for " +file_name+ " is more than 10%: Test failed")
                        return

                elif last_key == "Memory":
                    if golden_json[key][sub_key][last_key] and "MB" in golden_json[key][sub_key][last_key]:
                        g_value = float(golden_json[key][sub_key][last_key].split("MB")[0])
                        delta_runtime = 0.1 * g_value
                    if new_json[key][sub_key][last_key] and "MB" in new_json[key][sub_key][last_key]:
                        n_value = float(new_json[key][sub_key][last_key].split("MB")[0])
                    if abs(g_value - n_value) > delta_runtime:
                        print("Memory difference in " +design_name+ " for " +file_name+ " is more than 10%: Test failed")
                        return
                elif last_key == "DFFs":
                    g_value = int(golden_json[key][sub_key][last_key])
                    n_value = int(new_json[key][sub_key][last_key])
                    delta_runtime = 0.05 * g_value
                    if abs(g_value - n_value) > delta_runtime:
                        print("DFFs difference in " +design_name+ " for " +file_name+ " is more than 5%: Test failed")
                        return
                elif last_key == "LUTs":
                    g_value = int(golden_json[key][sub_key][last_key])
                    n_value = int(new_json[key][sub_key][last_key])
                    delta_runtime = 0.05 * g_value
                    if abs(g_value - n_value) > delta_runtime:
                        print("LUTs difference in " +design_name+ " for " +file_name+ " is more than 5%: Test failed")
                        return
                elif last_key == "BRAMs":
                    g_value = int(golden_json[key][sub_key][last_key])
                    n_value = int(new_json[key][sub_key][last_key])
                    delta_runtime = 0.05 * g_value
                    if abs(g_value - n_value) > delta_runtime:
                        print("BRAMs difference in " +design_name+ " for " +file_name+ " is more than 5%: Test failed")
                        return
                elif last_key == "DSPs":
                    g_value = int(golden_json[key][sub_key][last_key])
                    n_value = int(new_json[key][sub_key][last_key])
                    delta_runtime = 0.05 * g_value
                    if abs(g_value - n_value) > delta_runtime:
                        print("DSPs difference in " +design_name+ " for " +file_name+ " is more than 5%: Test failed")
                        return
    print("passed")

compare_jsons("golden_data_final.json", "new_data.json")
