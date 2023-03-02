import os
import json

def convert_to_int(str_to_int):
    return int(str_to_int)

def cga_results():
    result={}
    main_path = os.getcwd()
    new_data_json = []
    for root, dirs, files in os.walk(main_path):
        if "new_data.json" in files:
            new_data_json.append(os.path.join(root, "new_data.json"))

    golden_data_json = []
    for root, dirs, files in os.walk(main_path):
        if "golden_data_final.json" in files:
            golden_data_json.append(os.path.join(root, "golden_data_final.json"))

    with open(new_data_json[0], 'r') as f1:
        new_data=json.load(f1)
        new_data_dump=json.dumps(new_data, indent=4)
    
    with open(golden_data_json[0], 'r') as f2:
        golden_data=json.load(f2)
        golden_data_dump=json.dumps(golden_data, indent=4)

    for golden_log_line_key, golden_log_line_keyword in golden_data.items():
        result[golden_log_line_key]={}
        for new_log_line_key, new_log_line_keyword in new_data.items():
            if golden_log_line_key == new_log_line_key:
                for golden_key in golden_data[golden_log_line_key]:
                    for new_key in new_data[new_log_line_key]:
                        if golden_key == new_key:
                            result[golden_log_line_key][golden_key]={}
                            for golden_sub_key in golden_data[golden_log_line_key][golden_key]:
                                for new_sub_key in new_data[new_log_line_key][new_key]:
                                    if golden_sub_key == new_sub_key:
                                        result[golden_log_line_key][golden_key][golden_sub_key]={}
                                        if golden_key=="bitstream_sim.log":
                                            if "Status" in golden_sub_key:
                                                if "Status" in new_sub_key:
                                                    if golden_data[golden_log_line_key][golden_key][golden_sub_key]=="Pass" and new_data[new_log_line_key][new_key][new_sub_key]=="Pass":
                                                        result[golden_log_line_key][golden_key][golden_sub_key]= "Pass" 
                                                    else:
                                                        result[golden_log_line_key][golden_key][golden_sub_key]= "Fail"
                                            if "Runtime" in golden_sub_key:
                                                if "Runtime" in new_sub_key:
                                                    golden_time=golden_data[golden_log_line_key][golden_key][golden_sub_key].split(" ")
                                                    golden_time_int=float(golden_time[0])
                                                    new_time_int=new_data[new_log_line_key][new_key][new_sub_key].split(" ")
                                                    if new_time_int[0]=="0":
                                                        float_time_new=float(new_time_int[0])
                                                    else:
                                                        float_time_new=float(new_time_int[0])
                                                    if golden_time_int==float_time_new:
                                                        golden_time_unit="Time is Same." +" Golden: "+str(golden_time_int) +"sec, Latest: "+ str(float_time_new)+"sec"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_time_unit
                                                    elif golden_time_int>float_time_new:
                                                        diff=golden_time_int-float_time_new
                                                        golden_time_unit="Golden time is greater than Latest time by "+str(diff)+"sec. Golden: "+str(golden_time_int) +"sec, Latest: "+ str(float_time_new)+"sec"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_time_unit
                                                    else:
                                                        diff=float_time_new-golden_time_int
                                                        golden_time_unit="Fail. Latest time is greater than Golden time by "+str(diff)+" sec. Golden: "+str(golden_time_int) +", Latest: "+ str(float_time_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_time_unit
                                            if "Memory" in golden_sub_key:
                                                if "Memory" in new_sub_key:
                                                    golden_mem_int=golden_data[golden_log_line_key][golden_key][golden_sub_key].split("M")
                                                    float_golden=float(golden_mem_int[0])
                                                    new_mem_int=new_data[new_log_line_key][new_key][new_sub_key]
                                                    if new_mem_int=="0":
                                                        float_new=float(new_mem_int)
                                                    else:
                                                        new_mem_int=new_data[new_log_line_key][new_key][new_sub_key].split("M")
                                                        float_new=float(new_mem_int[0]) 
                                                    if float_golden==float_new:
                                                        golden_memory_unit="Golden and Latest memories are same."+" Golden: "+str(float_golden) +"MB, Latest: "+ str(float_new)+"MB"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    elif float_golden>float_new:
                                                        diff=float_golden-float_new
                                                        golden_memory_unit="Golden memory is greater than Latest memory by "+str(diff)+"MB. Golden: "+str(float_golden) +"MB, Latest: "+ str(float_new)+"MB"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    else:
                                                        diff=float_new-float_golden
                                                        golden_memory_unit="Fail. Latest memory is greater than Golden memory by "+str(diff)+"MB. Golden: "+str(float_golden) +"MB, Latest: "+ str(float_new)+"MB"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                        if golden_key=="post_route_sim.log":
                                            if "Status" in golden_sub_key:
                                                if "Status" in new_sub_key:
                                                    if golden_data[golden_log_line_key][golden_key][golden_sub_key]=="Pass" and new_data[new_log_line_key][new_key][new_sub_key]=="Pass":
                                                        result[golden_log_line_key][golden_key][golden_sub_key]="Pass"
                                                    else:
                                                        result[golden_log_line_key][golden_key][golden_sub_key]="Fail"
                                            if "Runtime" in golden_sub_key:
                                                if "Runtime" in new_sub_key:
                                                    golden_time=golden_data[golden_log_line_key][golden_key][golden_sub_key].split(" ")
                                                    golden_time_int=float(golden_time[0])
                                                    new_time_int=new_data[new_log_line_key][new_key][new_sub_key].split(" ")
                                                    if new_time_int[0]=="0":
                                                        float_time_new=float(new_time_int[0])
                                                    else:
                                                        float_time_new=float(new_time_int[0])
                                                    if golden_time_int==float_time_new:
                                                        golden_time_unit="Time is Same" +" Golden "+str(golden_time_int) +"sec Latest "+ str(float_time_new)+"sec"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_time_unit
                                                    elif golden_time_int>float_time_new:
                                                        diff=golden_time_int-float_time_new
                                                        golden_time_unit="Golden time is greater than Latest time by "+str(diff)+"sec. Golden: "+str(golden_time_int) +"sec, Latest: "+ str(float_time_new)+"sec"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_time_unit
                                                    else:
                                                        diff=float_time_new-golden_time_int
                                                        golden_time_unit="Fail. Latest time is greater than Golden time by "+str(diff)+" sec. Golden: "+str(golden_time_int) +", Latest: "+ str(float_time_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_time_unit
                                            if "Memory" in golden_sub_key:
                                                if "Memory" in new_sub_key:
                                                    golden_mem_int=golden_data[golden_log_line_key][golden_key][golden_sub_key].split("M")
                                                    float_golden=float(golden_mem_int[0])
                                                    new_mem_int=new_data[new_log_line_key][new_key][new_sub_key]
                                                    if new_mem_int=="0":
                                                        float_new=float(new_mem_int)
                                                    else:
                                                        new_mem_int=new_data[new_log_line_key][new_key][new_sub_key].split("M")
                                                        float_new=float(new_mem_int[0]) 
                                                    if float_golden==float_new:
                                                        golden_memory_unit="Golden and Latest memories are same."+" Golden: "+str(float_golden) +"MB, Latest: "+ str(float_new)+"MB"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    elif float_golden>float_new:
                                                        diff=float_golden-float_new
                                                        golden_memory_unit="Golden memory is greater than Latest memory by "+str(diff)+"MB. Golden: "+str(float_golden) +"MB, Latest: "+ str(float_new)+"MB"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    else:
                                                        diff=float_new-float_golden
                                                        golden_memory_unit="Fail. Latest memory is greater than Golden memory by "+str(diff)+"MB. Golden: "+str(float_golden) +"MB, Latest: "+ str(float_new)+"MB"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                        if golden_key=="raptor.log":
                                            if "Status" in golden_sub_key:
                                                if "Status" in new_sub_key:
                                                    if golden_data[golden_log_line_key][golden_key][golden_sub_key]=="Pass" and new_data[new_log_line_key][new_key][new_sub_key]=="Pass":
                                                        result[golden_log_line_key][golden_key][golden_sub_key]="Pass"
                                                    else:
                                                        result[golden_log_line_key][golden_key][golden_sub_key]="Fail"
                                            if "error_msg" in golden_sub_key:
                                                if "error_msg" in new_sub_key:
                                                    if golden_data[golden_log_line_key][golden_key][golden_sub_key]==None and new_data[new_log_line_key][new_key][new_sub_key]==None:
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=None
                                                    else:
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=new_data[new_log_line_key][new_key][new_sub_key]
                                            if "Runtime" in golden_sub_key:
                                                if "Runtime" in new_sub_key:
                                                    golden_time=golden_data[golden_log_line_key][golden_key][golden_sub_key].split(" ")
                                                    golden_time_int=float(golden_time[0])
                                                    new_time_int=new_data[new_log_line_key][new_key][new_sub_key].split(" ")
                                                    if new_time_int[0]=="0":
                                                        float_time_new=float(new_time_int[0])
                                                    else:
                                                        float_time_new=float(new_time_int[0])
                                                    if golden_time_int==float_time_new:
                                                        golden_time_unit="Time is Same." +" Golden: "+str(golden_time_int) +"sec, Latest: "+ str(float_time_new)+"sec"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_time_unit
                                                    elif golden_time_int>float_time_new:
                                                        diff=golden_time_int-float_time_new
                                                        golden_time_unit="Golden time is greater than Latest time by "+str(diff)+"sec. Golden: "+str(golden_time_int) +"sec, Latest: "+ str(float_time_new)+"sec"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_time_unit
                                                    else:
                                                        diff=float_time_new-golden_time_int
                                                        golden_time_unit="Fail. Latest time is greater than Golden time by "+str(diff)+" sec. Golden: "+str(golden_time_int) +", Latest: "+ str(float_time_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_time_unit
                                            if "Memory" in golden_sub_key:
                                                if "Memory" in new_sub_key:
                                                    golden_mem_int=golden_data[golden_log_line_key][golden_key][golden_sub_key].split("M")
                                                    float_golden=float(golden_mem_int[0])
                                                    new_mem_int=new_data[new_log_line_key][new_key][new_sub_key]
                                                    if new_mem_int=="0":
                                                        float_new=float(new_mem_int)
                                                    else:
                                                        new_mem_int=new_data[new_log_line_key][new_key][new_sub_key].split("M")
                                                        float_new=float(new_mem_int[0]) 
                                                    if float_golden==float_new:
                                                        golden_memory_unit="Golden and Latest memories are same."+" Golden: "+str(float_golden) +"MB, Latest: "+ str(float_new)+"MB"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    elif float_golden>float_new:
                                                        diff=float_golden-float_new
                                                        golden_memory_unit="Golden memory is greater than Latest memory by "+str(diff)+"MB. Golden: "+str(float_golden) +"MB, Latest: "+ str(float_new)+"MB"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    else:
                                                        diff=float_new-float_golden
                                                        golden_memory_unit="Fail. Latest memory is greater than Golden memory by "+str(diff)+"MB. Golden: "+str(float_golden) +"MB, Latest: "+ str(float_new)+"MB"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit                
                                            if "DFFs" in golden_sub_key:
                                                if "DFFs" in new_sub_key:
                                                    int_dff_golden=convert_to_int(golden_data[golden_log_line_key][golden_key][golden_sub_key])
                                                    int_dff_new=convert_to_int(new_data[new_log_line_key][new_key][new_sub_key])
                                                    # int_dff_new=convert_to_int(new_data[new_log_line_key][new_key][new_sub_key].split(',')[0])
                                                    if (int_dff_golden==int_dff_new):
                                                        golden_memory_unit="Pass. DFFs are same."+" Golden: "+str(int_dff_golden) +", Latest: "+ str(int_dff_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    elif (int_dff_golden>int_dff_new):
                                                        diff=int_dff_golden-int_dff_new
                                                        golden_memory_unit="Pass. Golden DFFs are greater than Latest by "+str(diff)+". Golden: "+str(int_dff_golden) +", Latest: "+ str(int_dff_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    else:
                                                        diff=int_dff_new-int_dff_golden
                                                        golden_memory_unit="Fail. Latest DFFs are greater than Golden by "+str(diff)+". Golden: "+str(int_dff_golden) +", Latest: "+ str(int_dff_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                            if "LUTs" in golden_sub_key:
                                                if "LUTs" in new_sub_key:
                                                    int_luts_golden=convert_to_int(golden_data[golden_log_line_key][golden_key][golden_sub_key])
                                                    int_luts_new=convert_to_int(new_data[new_log_line_key][new_key][new_sub_key])
                                                    # int_luts_new=convert_to_int(new_data[new_log_line_key][new_key][new_sub_key].split(',')[0])
                                                    if (int_luts_golden==int_luts_new):
                                                        golden_memory_unit="Pass. LUTs are same."+" Golden: "+str(int_luts_golden) +", Latest: "+ str(int_luts_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    elif (int_luts_golden>int_luts_new):
                                                        diff=int_luts_golden-int_luts_new
                                                        golden_memory_unit="Pass. Golden LUTs are greater than Latest by "+str(diff)+". Golden: "+str(int_luts_golden) +", Latest: "+ str(int_luts_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    else:
                                                        diff=int_luts_new-int_luts_golden
                                                        golden_memory_unit="Fail. Latest LUTs are greater than Golden by "+str(diff)+". Golden: "+str(int_luts_golden) +", Latest: "+ str(int_luts_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                            if "BRAMs" in golden_sub_key:
                                                if "BRAMs" in new_sub_key:
                                                    int_brams_golden=convert_to_int(golden_data[golden_log_line_key][golden_key][golden_sub_key])
                                                    int_brams_new=convert_to_int(new_data[new_log_line_key][new_key][new_sub_key])
                                                    # int_brams_new=convert_to_int(new_data[new_log_line_key][new_key][new_sub_key].split(',')[0])
                                                    if (int_brams_golden==int_brams_new):
                                                        golden_memory_unit="Pass. BRAMs are same."+" Golden: "+str(int_brams_golden) +", Latest: "+ str(int_brams_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    elif (int_brams_golden>int_brams_new):
                                                        diff=int_brams_golden-int_brams_new
                                                        golden_memory_unit="Pass. Golden BRAMs are greater than Latest by "+str(diff)+". Golden: "+str(int_brams_golden) +", Latest: "+ str(int_brams_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    else:
                                                        diff=int_brams_new-int_brams_golden
                                                        golden_memory_unit="Fail. Latest BRAMs are greater than Golden by "+str(diff)+". Golden: "+str(int_brams_golden) +", Latest: "+ str(int_brams_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                            if "DSPs" in golden_sub_key:
                                                if "DSPs" in new_sub_key:
                                                    int_dsp_golden=convert_to_int(golden_data[golden_log_line_key][golden_key][golden_sub_key])
                                                    int_dsp_new=convert_to_int(new_data[new_log_line_key][new_key][new_sub_key])
                                                    # int_dsp_new=convert_to_int(new_data[new_log_line_key][new_key][new_sub_key].split(',')[0])
                                                    if (int_dsp_golden==int_dsp_new):
                                                        golden_memory_unit="Pass. DSPs are same."+" Golden: "+str(int_dsp_golden) +", Latest: "+ str(int_dsp_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    elif (int_dsp_golden>int_dsp_new):
                                                        diff=int_dsp_golden-int_dsp_new
                                                        golden_memory_unit="Pass. Golden DSPs are greater than Latest by "+str(diff)+". Golden: "+str(int_dsp_golden) +", Latest: "+ str(int_dsp_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    else:
                                                        diff=int_dsp_new-int_dsp_golden
                                                        golden_memory_unit="Fail. Latest DSPs are greater than Golden by "+str(diff)+". Golden: "+str(int_dsp_golden) +", Latest: "+ str(int_dsp_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                            if "CLBs" in golden_sub_key:
                                                if "CLBs" in new_sub_key:
                                                    int_clb_golden=convert_to_int(golden_data[golden_log_line_key][golden_key][golden_sub_key])
                                                    int_clb_new=convert_to_int(new_data[new_log_line_key][new_key][new_sub_key])
                                                    # int_clb_new=convert_to_int(new_data[new_log_line_key][new_key][new_sub_key].split(',')[0])
                                                    if (int_clb_golden==int_clb_new):
                                                        golden_memory_unit="Pass. CLBs are same."+" Golden: "+str(int_clb_golden) +", Latest: "+ str(int_clb_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    elif (int_clb_golden>int_clb_new):
                                                        diff=int_clb_golden-int_clb_new
                                                        golden_memory_unit="Pass. Golden CLBs are greater than Latest by "+str(diff)+". Golden: "+str(int_clb_golden) +", Latest: "+ str(int_clb_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    else:
                                                        diff=int_clb_new-int_clb_golden
                                                        golden_memory_unit="Fail. Latest CLBs are greater than Golden by "+str(diff)+". Golden: "+str(int_clb_golden) +", Latest: "+ str(int_clb_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                            if "Fmax" in golden_sub_key:
                                                if "Fmax" in new_sub_key:
                                                    int_fmax_golden=float(golden_data[golden_log_line_key][golden_key][golden_sub_key].split()[0])
                                                    int_fmax_new=float(new_data[new_log_line_key][new_key][new_sub_key].split()[0])
                                                    positive_percent5=float((5*int_fmax_golden)/100)+int_fmax_golden
                                                    negative_percent5=int_fmax_golden-float((5*int_fmax_golden)/100)
                                                    if (int_fmax_golden==int_fmax_new):
                                                        golden_fmax_unit="Pass. Fmax are same."+" Golden: "+str(int_fmax_golden) +"MHz, Latest: "+ str(int_fmax_new)+"MHz"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_fmax_unit
                                                    elif (int_fmax_golden>int_fmax_new and negative_percent5<int_fmax_new):
                                                        diff=int_fmax_golden-int_fmax_new
                                                        golden_fmax_unit="Pass. Latest Fmax is less than Golden by "+str(diff)+". Golden: "+str(int_fmax_golden) +", Latest: "+ str(int_fmax_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_fmax_unit
                                                    elif (int_fmax_golden<int_fmax_new):
                                                        diff=int_fmax_new-int_fmax_golden
                                                        golden_fmax_unit="Pass. Latest Fmax is less than Golden by "+str(diff)+". Golden: "+str(int_fmax_golden) +", Latest: "+ str(int_fmax_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_fmax_unit
                                                    else:
                                                        diff=int_fmax_golden-int_fmax_new
                                                        golden_fmax_unit="Fail. Latest Fmax is greater than Golden by "+str(diff)+". Golden: "+str(int_fmax_golden) +", Latest: "+ str(int_fmax_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_fmax_unit
                                            if "FLE_Percentage_used" in golden_sub_key:
                                                if "FLE_Percentage_used" in new_sub_key:
                                                    int_fle_golden=float(golden_data[golden_log_line_key][golden_key][golden_sub_key])
                                                    int_fle_new=float(new_data[new_log_line_key][new_key][new_sub_key])
                                                    percent20=float((10*int_fle_golden)/100)+int_fle_golden
                                                    # int_fle_new=float(new_data[new_log_line_key][new_key][new_sub_key].split(',')[0])
                                                    # percent=int(new_data[new_log_line_key][new_key][new_sub_key].split(':')[1])
                                                    # percent20=float((percent*int_fle_golden)/100)+int_fle_golden
                                                    if (int_fle_golden==int_fle_new):
                                                        golden_memory_unit="Pass. FLE_Percentage_used are same."+" Golden: "+str(int_fle_golden) +", Latest: "+ str(int_fle_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    elif (int_fle_golden>int_fle_new):
                                                        diff=int_fle_golden-int_fle_new
                                                        golden_memory_unit="Pass. Golden FLE_Percentage_used are greater than Latest by "+str(diff)+". Golden: "+str(int_fle_golden) +", Latest: "+ str(int_fle_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    elif (int_fle_new>int_fle_golden and int_fle_new<percent20):
                                                        diff=int_fle_new-int_fle_golden
                                                        golden_memory_unit="Pass. Latest Wirelength_Percentage is greater than Golden but within 20 percent by "+str(diff)+". Golden: "+str(int_fle_golden) +", Latest: "+ str(int_fle_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    else:
                                                        diff=int_fle_new-int_fle_golden
                                                        golden_memory_unit="Fail. Latest FLE_Percentage_used are greater than Golden by "+str(diff)+". Golden: "+str(int_fle_golden) +", Latest: "+ str(int_fle_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                            if "Wirelength_Percentage_used" in golden_sub_key:
                                                if "Wirelength_Percentage_used" in new_sub_key:
                                                    int_metal_golden=float(golden_data[golden_log_line_key][golden_key][golden_sub_key])
                                                    int_metal_new=float(new_data[new_log_line_key][new_key][new_sub_key])
                                                    percent20=float((10*int_metal_golden)/100)+int_metal_golden
                                                    # int_metal_new=float(new_data[new_log_line_key][new_key][new_sub_key].split(',')[0])
                                                    # percent=int(new_data[new_log_line_key][new_key][new_sub_key].split(':')[1])
                                                    # percent20=float((percent*int_metal_golden)/100)+int_metal_golden
                                                    if (int_metal_golden==int_metal_new):
                                                        golden_memory_unit="Pass. Wirelength_Percentage are same."+" Golden: "+str(int_metal_golden) +", Latest: "+ str(int_metal_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    elif (int_metal_golden>int_metal_new):
                                                        diff=int_metal_golden-int_metal_new
                                                        golden_memory_unit="Pass. Golden Wirelength_Percentage are greater than Latest by "+str(diff)+". Golden: "+str(int_metal_golden) +", Latest: "+ str(int_metal_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    elif (int_metal_new>int_metal_golden and int_metal_new<percent20):
                                                        diff=int_metal_new-int_metal_golden
                                                        golden_memory_unit="Pass. Latest Wirelength_Percentage is greater than Golden but within 20 percent by "+str(diff)+". Golden: "+str(int_metal_golden) +", Latest: "+ str(int_metal_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    else:
                                                        diff=int_metal_new-int_metal_golden
                                                        golden_memory_unit="Fail. Latest Wirelength_Percentage are greater than Golden by "+str(diff)+". Golden: "+str(int_metal_golden) +", Latest: "+ str(int_metal_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                        if golden_key=="raptor_perf.log":
                                            if "Packer_time" in golden_sub_key:
                                                if "Packer_time" in new_sub_key:
                                                    int_packer_golden=int(golden_data[golden_log_line_key][golden_key][golden_sub_key].split()[0])
                                                    int_packer_new=int(new_data[new_log_line_key][new_key][new_sub_key].split()[0])
                                                    percent10=int((20*int_packer_golden)/100)+int_packer_golden
                                                    # percent=int(new_data[new_log_line_key][new_key][new_sub_key].split(':')[1])
                                                    # percent10=int((percent*int_packer_golden)/100)+int_packer_golden
                                                    if (int_packer_golden==int_packer_new):
                                                        golden_memory_unit="Pass. Packer_time is same."+" Golden: "+str(int_packer_golden) +", Latest: "+ str(int_packer_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    elif (int_packer_new>int_packer_golden and int_packer_new<percent10):
                                                        diff=int_packer_new-int_packer_golden
                                                        golden_memory_unit="Pass. Golden Packer_time is greater than Latest but within "+str(percent10)+"percent by "+str(diff)+"ms. Golden: "+str(int_packer_golden) +"ms, Latest: "+ str(int_packer_new)+"ms"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    elif (int_packer_golden>int_packer_new):
                                                        diff=int_packer_golden-int_packer_new
                                                        golden_memory_unit="Pass. Golden Packer_time is greater than Latest by "+str(diff)+"ms. Golden: "+str(int_packer_golden) +"ms, Latest: "+ str(int_packer_new)+"ms"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    else:
                                                        diff=int_packer_new-int_packer_golden
                                                        golden_memory_unit="Fail. Latest Packer_time is greater than Golden by "+str(diff)+"ms. Golden: "+str(int_packer_golden) +"ms, Latest: "+ str(int_packer_new)+"ms"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                            if "Router_time" in golden_sub_key:
                                                if "Router_time" in new_sub_key:
                                                    int_router_golden=int(golden_data[golden_log_line_key][golden_key][golden_sub_key].split()[0])
                                                    int_router_new=int(new_data[new_log_line_key][new_key][new_sub_key].split()[0])
                                                    percent10=int((20*int_router_golden)/100)+int_router_golden
                                                    # percent=int(new_data[new_log_line_key][new_key][new_sub_key].split(':')[1])
                                                    # percent10=int((percent*int_router_golden)/100)+int_router_golden
                                                    if (int_router_golden==int_router_new):
                                                        golden_memory_unit="Pass. Router_time is same."+" Golden: "+str(int_router_golden) +", Latest: "+ str(int_router_new)
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    elif (int_router_new>int_router_golden and int_router_new<percent10):
                                                        diff=int_router_new-int_router_golden
                                                        golden_memory_unit="Pass. Golden Router_time is greater than Latest but within "+str(percent10)+"percent by "+str(diff)+"ms. Golden: "+str(int_router_golden) +"ms, Latest: "+ str(int_router_new)+"ms"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    elif (int_router_golden>int_router_new):
                                                        diff=int_router_golden-int_router_new
                                                        golden_memory_unit="Pass. Golden Router_time is greater than Latest by "+str(diff)+"ms. Golden: "+str(int_router_golden) +"ms, Latest: "+ str(int_router_new)+"ms"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit
                                                    else:
                                                        diff=int_router_new-int_router_golden
                                                        golden_memory_unit="Fail. Latest Router_time is greater than Golden by "+str(diff)+"ms. Golden: "+str(int_router_golden) +"ms, Latest: "+ str(int_router_new)+"ms"
                                                        result[golden_log_line_key][golden_key][golden_sub_key]=golden_memory_unit

    return result               


result=cga_results()
with open('CGA_result.json', 'w') as f:
        json.dump(result, f, indent=4)
