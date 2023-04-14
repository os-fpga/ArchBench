#Owner: Abdul Hameed Akram
#Dated: 30/01/2023
#Description: This code reads in a list of log files and a mapping of keywords for each file. 
#             It then processes each file and extracts information based on the keywords provided 
#             in the keywords.json. The extracted information is stored in a dictionary and 
#             written to a json file called "parsed_data.json".


# Importing the json module
import json
import os

def read_config_test_margins(flag):
    DFFs_margin=0
    LUTs_margin=0
    BRAMs_margin=0
    DSPs_margin=0
    CLBs_margin=0
    FLE_Percentage_used_margin=0
    CLB_percentage_used_margin=0
    Wirelength_Percentage_used_margin=0
    Synthesis_time_margin=0
    Packer_time_margin=0
    Placer_time_margin=0
    Router_time_margin=0
    Bitstram_time_margin=0
    fmax_margin=0
    LUTs_CLBs_ratio_margin=0
    adder_carry_margin=0
    with open("test.config") as conf:
        contents = conf.readlines()
        for i in range(len(contents)):
            if "DFFs_margin" in contents[i]:
                DFFs_margin=contents[i].split('"')[1]
            if "LUTs_margin" in contents[i]:
                LUTs_margin=contents[i].split('"')[1]
            if "BRAMs_margin" in contents[i]:
                BRAMs_margin=contents[i].split('"')[1]
            if "DSPs_margin" in contents[i]:
                DSPs_margin=contents[i].split('"')[1]
            if "CLBs_margin" in contents[i]:
                CLBs_margin=contents[i].split('"')[1]
            if "adder_carry" in contents[i]:
                adder_carry_margin=contents[i].split('"')[1]
            if "CLB_percentage_used_margin" in contents[i]:
                CLB_percentage_used_margin=contents[i].split('"')[1]
            if "FLE_Percentage_used_margin" in contents[i]:
                FLE_Percentage_used_margin=contents[i].split('"')[1]
            if "Wirelength_Percentage_used_margin" in contents[i]:
                Wirelength_Percentage_used_margin=contents[i].split('"')[1]
            if  "Synthesis_time_margin"in contents[i]:
                Synthesis_time_margin=contents[i].split('"')[1]
            if "Packer_time_margin" in contents[i]:
                Packer_time_margin=contents[i].split('"')[1]
            if "Placer_time_margin" in contents[i]:
                Placer_time_margin=contents[i].split('"')[1]
            if "Router_time_margin" in contents[i]:
                Router_time_margin=contents[i].split('"')[1]
            if  "Bitstram_time_margin"in contents[i]:
                Bitstram_time_margin=contents[i].split('"')[1]
            if "fmax_margin" in contents[i]:
                fmax_margin=contents[i].split('"')[1]
            if "LUTs_CLBs_ratio_margin" in contents[i]:
                LUTs_CLBs_ratio_margin=contents[i].split('"')[1]
        if flag=="DFFs_margin":
            return DFFs_margin
        if flag=="LUTs_margin":
            return LUTs_margin
        if flag=="BRAMs_margin":
            return BRAMs_margin
        if flag=="DSPs_margin":
            return DSPs_margin
        if flag=="CLBs_margin":
            return CLBs_margin
        if flag=="adder_carry_margin":
            return adder_carry_margin
        if flag=="CLB_percentage_used_margin":
            return CLB_percentage_used_margin
        if flag=="FLE_Percentage_used_margin":
            return FLE_Percentage_used_margin
        if flag=="Wirelength_Percentage_used_margin":
            return Wirelength_Percentage_used_margin
        if flag=="Synthesis_time_margin":
            return Synthesis_time_margin
        if flag=="Packer_time_margin":
            return Packer_time_margin
        if flag=="Placer_time_margin":
            return Placer_time_margin
        if flag=="Router_time_margin":
            return Router_time_margin
        if flag=="Bitstram_time_margin":
            return Bitstram_time_margin
        if flag=="fmax_margin":
            return fmax_margin
        if flag=="LUTs_CLBs_ratio_margin":
            return LUTs_CLBs_ratio_margin

# Router_time_m=read_config_test_margins("FLE_Percentage_used_margin")
# print("value",Router_time_m)
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
                        data[file][log_line_key] = 'Fail'
                    elif  log_line_key == 'error_msg':
                        data[file][log_line_key] = None    
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
            wirelength_percentage=0
            router_time=0
            start_pb_usage = 0
            start_fmax = 0 
            LUTs = 0
            CLBs = 0
            clb_used_percent=0
            total_clbs=0
            total_fles=0
            fle_used=0
            total_wirelength=0
            frequency=0
            ###bitstream.log###
            # Looping through each line in the log file
            if file == "bitstream_sim.log":
                bitstream_tb_dir=os.path.isdir('sim/bitstream_tb')
                for line in lines:
                    # Looping through each key and keyword in the log_line_keys_map for this log file
                    for log_line_key, log_line_keyword in log_line_keys_map[file].items():
                        # Checking if the keyword is in the current line
                        if bitstream_tb_dir:
                            if log_line_keyword in line:
                                # Checking the file name and updating the value of the log line key accordingly
                                if log_line_key == 'Status':
                                    status_bitstream.append(line.split(log_line_keyword)[1].split('\n')[0])
                                    data[file][log_line_key] = 'Fail' if "Test Failed" in status_bitstream else 'Pass'
                                elif log_line_key == 'Memory':
                                    data[file][log_line_key] = line.split(log_line_keyword)[1].strip().split(' peak')[0].strip()
                                elif log_line_key == 'Runtime':
                                    data[file][log_line_key] = line.split(log_line_keyword)[1].strip()
                        else:
                            data[file][log_line_key] = None
            ###post_route.log###
            # Looping through each line in the log file
            if file == "post_route_sim.log":
                post_route_tb_dir=os.path.isdir('sim/post_route_tb')
                for line in lines:
                    # Looping through each key and keyword in the log_line_keys_map for this log file
                    for log_line_key, log_line_keyword in log_line_keys_map[file].items():
                        # Checking if the keyword is in the current line
                        if post_route_tb_dir:
                            if log_line_keyword in line:
                                # Checking the file name and updating the value of the log line key accordingly
                                    if log_line_key == 'Status':
                                        data[file][log_line_key] = 'Fail' if line.split(log_line_keyword)[1].split('\n')[0] == "Failed" else 'Pass'
                                    elif log_line_key == 'Memory':
                                        data[file][log_line_key] = line.split(log_line_keyword)[1].strip().split(' peak')[0].strip()
                                    elif log_line_key == 'Runtime':
                                        data[file][log_line_key] = line.split(log_line_keyword)[1].strip()
                        else:
                            if log_line_key == 'Status':
                                data[file][log_line_key] = None
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
                for i in range(len(lines) - 1, -1, -1):
                    if "Fmax: " in lines[i]:
                        start_fmax = i
                        break

                for line in lines:
                    # Looping through each key and keyword in the log_line_keys_map for this log file
                    for log_line_key, log_line_keyword in log_line_keys_map[file].items():
                        # Checking if the keyword is in the current line
                        if log_line_keyword in line:
                            # Checking the file name and updating the value of the log line key accordingly
                            if log_line_key == 'error_msg':
                                data[file][log_line_key] = line.split(log_line_keyword)[1].strip() 
                            elif log_line_key == 'Status':
                                data[file][log_line_key] = 'Pass' if ' '.join(line.split(log_line_keyword)[1].split(" ")[i] for i in [2,3,4]).split('\n')[0] == "bitstream is generated" else 'Fail'
                            if log_line_key == 'Fabric_netlist_version':
                                data[file][log_line_key] = line.split()[2]
                            if log_line_key == 'device':
                                data[file][log_line_key]=line.split()[-1]
                            
                for line in lines[start_pb_usage+1:]:
                    for log_line_key, log_line_keyword in log_line_keys_map[file].items():
                        # Checking if the keyword is in the current line
                        if log_line_keyword in line:
                            # Checking the file name and updating the value of the log line key accordingly
                            # print(log_line_key)
                            if log_line_key == 'CLBs':
                                # data[file][log_line_key] = line.split(log_line_keyword)[1].strip().split()[0]
                                CLBs=int(line.split(log_line_keyword)[1].strip().split()[1])
                                CLBs_margin=read_config_test_margins("CLBs_margin")           #to dump margin in parsed_data.json
                                clbs_num=line.split(log_line_keyword)[1].strip().split()[1]
                                data[file][log_line_key] = str(clbs_num)+", margin:"+str(CLBs_margin)
                        else:
                            if log_line_key == 'CLBs':
                                CLBs_margin=read_config_test_margins("CLBs_margin")
                                data[file][log_line_key] = str(CLBs)+", margin:"+str(CLBs_margin)
                # parsing the percentage of fle used from raptor.log
                for line in lines[start_pb_type_usage+1:]:
                    for log_line_key, log_line_keyword in log_line_keys_map[file].items():
                        if log_line_keyword in line:
                            if log_line_key == 'FLE_Percentage_used':
                                fle_used=line.split()[2].strip()
                for line in lines[blocks_of_type_clb:]:
                    if "blocks of type: clb" in line:
                        total_clbs=line.split(log_line_keyword)[0].strip().split()[0]
                        total_fles=8*int(total_clbs) # 100 * (#fle_wrapper) / (8 * #clb). 
                        fle_percentage=100*int(fle_used)/int(total_fles)
                    for log_line_key, log_line_keyword in log_line_keys_map[file].items():
                        if log_line_key == 'FLE_Percentage_used':
                            # data[file][log_line_key] = str(fle_percentage)
                            FLE_Percentage_used_margin=read_config_test_margins("FLE_Percentage_used_margin")           #to dump margin in parsed_data.json
                            str_fle_percentage=str(fle_percentage)+", margin:"+str(FLE_Percentage_used_margin)
                            data[file][log_line_key] = str_fle_percentage
                    for log_line_key, log_line_keyword in log_line_keys_map[file].items():
                        if total_clbs == 0:
                            clb_used_percent=0
                        else:
                            clb_used_percent=(CLBs/int(total_clbs))*100
                        if log_line_key == 'CLB_percentage_used':
                            # data[file][log_line_key] = str(clb_used_percent)
                            clb_percentage_used_margin=read_config_test_margins("CLB_percentage_used_margin")           #to dump margin in parsed_data.json
                            str_clb_percentage_used=str(clb_used_percent)+", margin:"+str(clb_percentage_used_margin)
                            data[file][log_line_key] = str_clb_percentage_used

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
                        wirelength_percentage=100*int(total_wirelength)/int(total_available_wirelength)    #%metal used will be 100 * total_wirelength / total_available.
                for log_line_key, log_line_keyword in log_line_keys_map[file].items():
                    if log_line_key == 'Wirelength_Percentage_used':
                        # data[file][log_line_key] = str(wirelength_percentage)
                        Wirelength_Percentage_used_margin=read_config_test_margins("Wirelength_Percentage_used_margin")           #to dump margin in parsed_data.json
                        str_metal_percentage=str(wirelength_percentage)+", margin:"+str(Wirelength_Percentage_used_margin)
                        data[file][log_line_key] = str_metal_percentage
                
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
                            elif log_line_key == 'LUTs':
                                # data[file][log_line_key] = line.split(log_line_keyword)[1].strip().split()[0]
                                LUTs=int(line.split(log_line_keyword)[1].strip().split()[0])
                                LUTs_margin=read_config_test_margins("LUTs_margin")           #to dump margin in parsed_data.json
                                luts_num=line.split(log_line_keyword)[1].strip().split()[0] 
                                data[file][log_line_key] =  str(luts_num)+", margin:"+str(LUTs_margin)

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
                                                # DSPs_margin=read_config_test_margins("DSPs_margin")           #to dump margin in parsed_data.json
                                                sum_dsps = sum_dsps + int(var)
                                                # data[file][log_line_key] = str(sum_dsps)
                                                str_sum_dsps= str(sum_dsps)+", margin:"+str(DSPs_margin)           #to dump margin in parsed_data.json
                                                data[file][log_line_key] = str_sum_dsps
                                            except ValueError:
                                                #If the conversion fails, the code stores the value "0" 
                                                data[file][log_line_key] = '0' 
                                if data[file][log_line_key] == "0":           #to dump margin in parsed_data.json
                                    DSPs_margin=read_config_test_margins("DSPs_margin")
                                    data[file][log_line_key] = "0, margin:"+str(DSPs_margin)          
                        elif log_line_key == 'registers':
                            dffs_keywords = log_line_keyword.split(',')
                            for dffs_keyword in dffs_keywords:
                                if dffs_keyword in line:
                                    for var in line.split(dffs_keyword)[1].strip().split():
                                    # Applying error - handling method
                                            try:
                                                # try converting to integer
                                                # DFFs_margin=read_config_test_margins("DFFs_margin")           #to dump margin in parsed_data.json
                                                sum_dffs = sum_dffs + int(var)
                                                # data[file][log_line_key] = str(sum_dffs)
                                                str_sum_dff= str(sum_dffs)+", margin:"+str(DFFs_margin)           #to dump margin in parsed_data.json
                                                data[file][log_line_key] = str_sum_dff
                                            except ValueError:
                                                data[file][log_line_key] = "0"
                                if data[file][log_line_key] == "0":           #to dump margin in parsed_data.json
                                    DFFs_margin=read_config_test_margins("DFFs_margin")
                                    data[file][log_line_key] = "0, margin:"+str(DFFs_margin)
# wirelength_Percentage_used instead of metal_Percentage_used    
                        elif log_line_key == 'BRAMs':
                            brams_keywords = log_line_keyword.split(',')
                            for brams_keyword in brams_keywords:
                                if brams_keyword in line:
                                    for var in line.split(brams_keyword)[1].strip().split():
                                    # Applying error - handling method
                                            try:
                                                # try converting to integer
                                                # BRAMs_margin=read_config_test_margins("BRAMs_margin")           #to dump margin in parsed_data.json
                                                sum_brams = sum_brams + int(var)
                                                # data[file][log_line_key] = str(sum_brams)
                                                str_sum_brams= str(sum_brams)+", margin:"+str(BRAMs_margin)           #to dump margin in parsed_data.json
                                                data[file][log_line_key] = str_sum_brams
                                            except ValueError:
                                                data[file][log_line_key] = '0' 
                                if data[file][log_line_key] == "0":           #to dump margin in parsed_data.json
                                    BRAMs_margin=read_config_test_margins("BRAMs_margin")
                                    data[file][log_line_key] = "0, margin:"+str(BRAMs_margin) 
                            # data[file][log_line_key] = line.split(log_line_keyword)[1].strip().split()[0]
                        elif log_line_key == 'Adder_Carry':
                            if log_line_keyword in line:
                                str_adder_carry=line.split()[1]+", margin:"+str(read_config_test_margins("adder_carry_margin"))
                                data[file][log_line_key] = str_adder_carry 
                            if data[file][log_line_key] == "0":           #to dump margin in parsed_data.json
                                # BRAMs_marin=
                                data[file][log_line_key] = "0, margin:"+str(read_config_test_margins("adder_carry_margin"))   
                for line in lines[start_fmax:]:
                    for log_line_key, log_line_keyword in log_line_keys_map[file].items():
                        if log_line_keyword in line:
                            if log_line_key == 'Fmax':
                                fmax=line.split()[-2]
                                fmax_freq=line.split()[-1]
                                frequency=fmax+" "+fmax_freq
                                # data[file][log_line_key]=frequency
                                fmax_margin=read_config_test_margins("fmax_margin")           #to dump margin in parsed_data.json
                                str_fmax=str(frequency)+", margin:"+str(fmax_margin)
                                data[file][log_line_key] = str_fmax
                        else:
                            if log_line_key == 'Fmax':
                                fmax_margin=read_config_test_margins("fmax_margin")
                                str_fmax=str(frequency)+", margin:"+str(fmax_margin)
                                data[file][log_line_key] = str_fmax 

                        if log_line_key == "LUT_CLB_ratio":
                            if log_line_keyword == "LUT/CLB":
                                if CLBs == 0:
                                    luts_clbs_ratio=0
                                else:    
                                    luts_clbs_ratio=LUTs/CLBs
                                # data[file][log_line_key]=str(luts_clbs_ratio)
                                lut_clb_ratio_margin=read_config_test_margins("LUTs_CLBs_ratio_margin")           #to dump margin in parsed_data.json
                                str_lut_clb_ratio=str(luts_clbs_ratio)+", margin:"+str(lut_clb_ratio_margin)
                                data[file][log_line_key] = str_lut_clb_ratio
            # parse the router and packer time
            synth_time=0
            packer_time=0
            placer_time=0
            router_time=0
            bitstream_time=0
            if file == "raptor_perf.log":
                for i in range(len(lines)):
                    if "Synthesize has started" in lines[i]:
                        synth_start = i
                        synth_time_with_dot=lines[synth_start+2].strip().split()[4]+" "+lines[synth_start+2].strip().split()[5]
                        synth_time=synth_time_with_dot[0:-1]
                        break
                for i in range(len(lines)):
                    if "Packing has started" in lines[i]:
                        start_print_stats = i
                        packer_time_with_dot=lines[start_print_stats+2].strip().split()[4]+" "+lines[start_print_stats+2].strip().split()[5]
                        packer_time=packer_time_with_dot[0:-1]
                        break
                for i in range(len(lines)):
                    if "Route has started" in lines[i]:
                        start_print_stats = i
                        router_time_with_dot=lines[start_print_stats+2].strip().split()[4]+" "+lines[start_print_stats+2].strip().split()[5]
                        router_time=router_time_with_dot[0:-1]
                        break
                for i in range(len(lines)):
                    if "Placement has started" in lines[i]:
                        placement_start_line = i
                        placer_time_with_dor=lines[placement_start_line+2].strip().split()[4]+" "+lines[placement_start_line+2].strip().split()[5]
                        placer_time=placer_time_with_dor[0:-1]
                        break
                for i in range(len(lines)):
                    if "GenerateBitstream has started" in lines[i]:
                        bitstream_start_line = i
                        bitstream_time_with_dot=lines[bitstream_start_line+2].strip().split()[4]+" "+lines[bitstream_start_line+2].strip().split()[5]
                        bitstream_time=bitstream_time_with_dot[0:-1]
                        break
                for log_line_key, log_line_keyword in log_line_keys_map[file].items():
                    if log_line_key == 'Synthesis_time':
                        # data[file][log_line_key] = str(packer_time)
                        Synthesis_time_margin=read_config_test_margins("Synthesis_time_margin")           #to dump margin in parsed_data.json
                        str_synthesis_time=str(synth_time)+", margin:"+str(Synthesis_time_margin)
                        data[file][log_line_key] = str_synthesis_time
                    if log_line_key == 'Packer_time':
                        # data[file][log_line_key] = str(packer_time)
                        Packer_time_margin=read_config_test_margins("Packer_time_margin")           #to dump margin in parsed_data.json
                        str_packer_time=str(packer_time)+", margin:"+str(Packer_time_margin)
                        data[file][log_line_key] = str_packer_time
                    if log_line_key == 'Placer_time':
                        # data[file][log_line_key] = str(router_time)
                        Placer_time_margin=read_config_test_margins("Placer_time_margin")           #to dump margin in parsed_data.json
                        str_placer_time=str(placer_time)+", margin:"+str(Placer_time_margin)
                        data[file][log_line_key] = str_placer_time
                    if log_line_key == 'Router_time':
                        # data[file][log_line_key] = str(router_time)
                        Router_time_margin=read_config_test_margins("Router_time_margin")           #to dump margin in parsed_data.json
                        str_router_time=str(router_time)+", margin:"+str(Router_time_margin)
                        data[file][log_line_key] = str_router_time
                    if log_line_key == 'Bitstream_time':
                        # data[file][log_line_key] = str(router_time)
                        Bitstram_time_margin=read_config_test_margins("Bitstram_time_margin")           #to dump margin in parsed_data.json
                        str_bitstream_time=str(bitstream_time)+", margin:"+str(Bitstram_time_margin)
                        data[file][log_line_key] = str_bitstream_time
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
