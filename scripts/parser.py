#Owner: Abdul Hameed Akram
#Dated: 30/01/2023
#Description: This code reads in a list of log files and a mapping of keywords for each file. 
#             It then processes each file and extracts information based on the keywords provided 
#             in the keywords.json. The extracted information is stored in a dictionary and 
#             written to a json file called "parsed_data.json".


# Importing the json module
import json
import sys

# Defining the function parse_log_files() that takes in a list of log files and a log_line_keys_map
def parse_log_files(files, log_line_keys_map):
    # Initializing an empty dictionary to store the parsed data
    data = {}
    for file in files:
        with open(file, 'r') as f:
            # Adding the current file name as a key to the data dictionary and initializing its value as another dictionary
            data[file] = {}
            # Reading all the lines of the log file into a list
            lines = f.readlines()

            # Looping through each key and keyword in the log_line_keys_map for this log file
            for log_line_key, log_line_keyword in log_line_keys_map[file].items():
                # Initializing the value for this key as N/A or 0 depending on the key
                    if log_line_key == 'Status':
                        data[file][log_line_key] = 'N/A'
                    else:
                        data[file][log_line_key] = '0'

            status_bitstream = []
            sum_dffs = 0
            sum_dsps = 0
            sum_brams = 0
            start_print_stats = 0
            start_pb_type_usage=0
            blocks_of_type_clb=0
            fle_percentage=0
            line_of_total_wirelength=0
            metal_percentage=0
            router_time=0
            start_pb_usage = 0
            ###bitstream.log###
            # Looping through each line in the log file
            if file == "bitstream_sim.log":
                for line in lines:
                    # Looping through each key and keyword in the log_line_keys_map for this log file
                    for log_line_key, log_line_keyword in log_line_keys_map[file].items():
                        # Checking if the keyword is in the current line
                        if log_line_keyword in line:
                            # Checking the file name and updating the value of the log line key accordingly
                            if log_line_key == 'Status':
                                status_bitstream.append(line.split(log_line_keyword)[1].split('\n')[0])
                                data[file][log_line_key] = 'Fail' if "Test Failed" in status_bitstream else 'Pass'
                            elif log_line_key == 'Memory':
                                data[file][log_line_key] = line.split(log_line_keyword)[1].strip().split(' peak')[0].strip()      
                            elif log_line_key == 'Runtime':
                                data[file][log_line_key] = line.split(log_line_keyword)[1].strip() 

            ###post_route.log###
            # Looping through each line in the log file
            if file == "post_route_sim.log":
                for line in lines:
                    # Looping through each key and keyword in the log_line_keys_map for this log file
                    for log_line_key, log_line_keyword in log_line_keys_map[file].items():
                        # Checking if the keyword is in the current line
                        if log_line_keyword in line:
                            # Checking the file name and updating the value of the log line key accordingly
                            if log_line_key == 'Status':
                                data[file][log_line_key] = 'Fail' if line.split(log_line_keyword)[1].split('\n')[0] == "Simulation Failed" else 'Pass'
                            elif log_line_key == 'Memory':
                                data[file][log_line_key] = line.split(log_line_keyword)[1].strip().split(' peak')[0].strip()      
                            elif log_line_key == 'Runtime':
                                data[file][log_line_key] = line.split(log_line_keyword)[1].strip() 
            
            ###raptor.log###
            # Looping through each line in the log file
            if file == "raptor.log":
                #start looping from end index of log and check the index where Printing statistics. occured, store in start variable
                for i in range(len(lines) - 1, -1, -1):
                    if "Printing statistics." in lines[i]:
                        start_print_stats = i
                        break
                for i in range(len(lines) - 1, -1, -1):
                    if "Printing statistics." in lines[i]:
                        start_pb_usage = i
                        break
                for i in range(len(lines) - 1, -1, -1):
                    if "Pb types usage..." in lines[i]:
                        start_pb_type_usage = i
                        break
                for i in range(len(lines) - 1, -1, -1):
                    if "blocks of type: clb" in lines[i]:
                        blocks_of_type_clb = i
                        break
                for i in range(len(lines) - 1, -1, -1):
                    if "Total wirelength:" in lines[i]:
                        line_of_total_wirelength = i
                        break
                for line in lines[start_pb_usage+1:]:
                    for log_line_key, log_line_keyword in log_line_keys_map[file].items():
                        # Checking if the keyword is in the current line
                        if log_line_keyword in line:
                            # Checking the file name and updating the value of the log line key accordingly
                            if log_line_key == 'CLBs':
                                data[file][log_line_key] = line.split(log_line_keyword)[1].strip().split()[0]      
                # parsing the percentage of fle used from raptor.log
                for line in lines[start_pb_type_usage+1:]:
                    if "fle            :" in line:
                        fle_used=line.split()[2].strip()
                for line in lines[blocks_of_type_clb:]:
                    if "blocks of type: clb" in line:
                        total_clbs=line.split(log_line_keyword)[0].strip().split()[0]
                        total_fles=8*int(total_clbs) # 100 * (#fle_wrapper) / (8 * #clb). 
                        fle_percentage=100*int(fle_used)/int(total_fles)
                    for log_line_key, log_line_keyword in log_line_keys_map[file].items():
                        if log_line_key == 'FLE_Percentage_used':
                            data[file][log_line_key] = str(fle_percentage)

                # parsing the percentage of metal used from raptor.log 
                for i in range(len(lines) - 1, -1, -1):
                    if "Total tracks in x-direction:" in lines[i]:
                        line_of_total_track_x = i
                        y_directed_channel=lines[line_of_total_track_x-2].strip().split()[0]
                        break
                for i in range(len(lines) - 1, -1, -1):
                    if "Y - Directed channels:" in lines[i]:
                        line_of_total_track_y = i
                        x_directed_channel=lines[line_of_total_track_y-1].strip().split()[0]
                        break
                for line in lines[line_of_total_wirelength:]:
                    if "Total wirelength:" in line:
                        total_wirelength=line.split()[2].split(",")[0]  
                    if "Total tracks in x-direction:" in line:
                        x_direction=line.split()[4].split(",")[0]
                        y_direction=line.split()[7]
                        total_available_wirelength=int(x_direction)*(int(y_directed_channel)+1) + int(y_direction)*(int(x_directed_channel)+1)              # Total available wirelength will be 720 * (10 + 1) + 1760 * (8 + 1)
                        metal_percentage=100*int(total_wirelength)/int(total_available_wirelength)    #%metal used will be 100 * total_wirelength / total_available.
                for log_line_key, log_line_keyword in log_line_keys_map[file].items():
                    if log_line_key == 'Metal_Percentage_used':
                        data[file][log_line_key] = str(metal_percentage)

                for line in lines[start_print_stats+1:]:
                    # Looping through each key and keyword in the log_line_keys_map for this log file
                    for log_line_key, log_line_keyword in log_line_keys_map[file].items():
                        # Checking if the keyword is in the current line
                        if log_line_keyword in line:
                            # Checking the file name and updating the value of the log line key accordingly
                            if log_line_key == 'Memory':
                                data[file][log_line_key] = line.split(log_line_keyword)[1].strip().split(' peak')[0].strip()      
                            elif log_line_key == 'Runtime':
                                data[file][log_line_key] = line.split(log_line_keyword)[1].strip() 
                            elif log_line_key == 'Status':
                                data[file][log_line_key] = 'Pass' if ' '.join(line.split(log_line_keyword)[1].split(" ")[i] for i in [2,3,4]).split('\n')[0] == "bitstream is generated" else 'Fail'
                            elif log_line_key == 'LUTs':
                                data[file][log_line_key] = line.split(log_line_keyword)[1].strip().split()[0]  

#                   The code first checks if the log line key
#                   is equal to "DSPs" and "DFFs" 
#                   and the file is raptor.log.
                        if log_line_key == 'DSPs':
                            #the code splits the log line keyword by commas and loops through the resulting list of keywords.
                            dsp_keywords = log_line_keyword.split(',')
                            for dsp_keyword in dsp_keywords:
                                if dsp_keyword in line:
                                    for var in line.split(dsp_keyword)[1].strip().split():
                                    # Applying error - handling method
                                            try:
                                                sum_dsps = sum_dsps + int(var)
                                                # try converting to integer
                                                # the code tries to convert the resulting string to an integer 
                                                data[file][log_line_key] = str(sum_dsps)
                                            except ValueError:
                                                #If the conversion fails, the code stores the value "0" 
                                                data[file][log_line_key] = '0'          
                        elif log_line_key == 'DFFs':
                            dffs_keywords = log_line_keyword.split(',')
                            for dffs_keyword in dffs_keywords:
                                if dffs_keyword in line:
                                    for var in line.split(dffs_keyword)[1].strip().split():
                                    # Applying error - handling method
                                            try:
                                                # try converting to integer
                                                sum_dffs = sum_dffs + int(var)
                                                data[file][log_line_key] = str(sum_dffs)
                                            except ValueError:
                                                data[file][log_line_key] = '0' 
    
                        elif log_line_key == 'BRAMs':
                            brams_keywords = log_line_keyword.split(',')
                            for brams_keyword in brams_keywords:
                                if brams_keyword in line:
                                    for var in line.split(brams_keyword)[1].strip().split():
                                    # Applying error - handling method
                                            try:
                                                # try converting to integer
                                                sum_brams = sum_brams + int(var)
                                                data[file][log_line_key] = str(sum_brams)
                                            except ValueError:
                                                data[file][log_line_key] = '0'  
                            # data[file][log_line_key] = line.split(log_line_keyword)[1].strip().split()[0]   
            # parse the router and packer time
            if file == "raptor_perf.log":
                for i in range(len(lines)):
                    if "Packing has started" in lines[i]:
                        start_print_stats = i
                        packer_time=lines[start_print_stats+2].strip().split()[4]+" "+lines[start_print_stats+2].strip().split()[5]
                        break
                for i in range(len(lines)):
                    if "Route has started" in lines[i]:
                        start_print_stats = i
                        router_time=lines[start_print_stats+2].strip().split()[4]+" "+lines[start_print_stats+2].strip().split()[5]
                        break
                for log_line_key, log_line_keyword in log_line_keys_map[file].items():
                    if log_line_key == 'Packer_time':
                        data[file][log_line_key] = str(packer_time)
                    if log_line_key == 'Router_time':
                        data[file][log_line_key] = str(router_time)
    return data

def main():
    # List of log file names to be parsed
    files = ['bitstream_sim.log', 'post_route_sim.log','raptor.log','raptor_perf.log']
    # files = [sys.argv[1], sys.argv[2], sys.argv[3]]
    # Open the keywords file and read the keywords mapping
    with open('../../scripts/keywords.json', 'r') as f:
        log_line_keys_map = json.load(f)
    data = parse_log_files(files, log_line_keys_map)
    with open('parsed_data.json', 'w') as f:
        json.dump(data, f, indent=4)

if __name__ == '__main__':
    print ("parser.py is being run directly")
    main()
else: 
    print ("parser.py is being imported")
    main()
