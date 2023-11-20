#!/bin/bash

# cp -R /cadlib/gemini/TSMC16NMFFC/release/netlist_gemini_compact/latest/gemini_compact_10x8/ ./SRC
# cp -R ../openfpga-pd-castor-rs/k6n8_TSMC16nm_7.5T/CommonFiles/task/CustomModules/ ./SRC/CustomModules

# cp -R /nfs_project/castor/DV/from_arbutus/augusts25_23/v1.6.79/k6n8_TSMC16nm_7.5T/FPGA10x8_gemini_compact_pnr/fabric_task/run001/k6n8_vpr/top/MIN_ROUTE_CHAN_WIDTH/SRC/ ./SRC
# cp -R /nfs_project/castor/DV/from_arbutus/augusts25_23/v1.6.79/k6n8_TSMC16nm_7.5T/CommonFiles/task/CustomModules/ ./SRC/CustomModules

cp -R /nfs_project/castor/DV/fabric_release/v1.6.204/k6n8_TSMC16nm_7.5T/FPGA10x8_gemini_compact_latch_pnr/_run_dir/SRC/ ./SRC
cp -R /nfs_project/castor/DV/fabric_release/v1.6.204/k6n8_TSMC16nm_7.5T/CommonFiles/task/CustomModules/ ./SRC/CustomModules

sed -i s'/include \"/include \"..\/..\/..\/SRC\//' ./SRC/fabric_netlists.v
sed -i s'/`include \"..\/..\/..\/SRC\/.\/SRC\/sc_verilog\//\/\/`include "..\/..\/sim\//' ./SRC/fabric_netlists.v
sed -i s'/..\/..\/SRC\/.\//..\/..\//' ./SRC/fabric_netlists.v
sed -i s'/rs_preio/ql_preio/' ./SRC/fabric_netlists.v
sed -i s'/rs_dsp/QL_DSP/' ./SRC/fabric_netlists.v
sed -i s'/rs_bram/QL_BRAM/' ./SRC/fabric_netlists.v
sed -i s'/rs_ioff/ql_ioff/' ./SRC/fabric_netlists.v
sed -i '12s/^/`include "..\/..\/..\/SRC\/CustomModules\/bram\/rtl\/dti_dp_tm16ffcll_1024x18_t8bw2x_m_hc.v"\n/' ./SRC/fabric_netlists.v
sed -i '22s/^/`include \"..\/..\/..\/SRC\/CustomModules\/ql_dsp_dti.v\"\n/' ./SRC/fabric_netlists.v
sed -i '24s/^/`include \"..\/..\/..\/SRC\/CustomModules\/QL_TDP36K_dti.v\"\n/' ./SRC/fabric_netlists.v
# sed -i '16s/^/`include \"..\/..\/..\/SRC\/CustomModules\/QL_PREIO_dti.v\"\n/' ./SRC/fabric_netlists.v
sed -i '17s/^/`include \"..\/..\/..\/SRC\/CustomModules\/QL_IOFF_dti.v\"\n/' ./SRC/fabric_netlists.v
sed -i '18s/^/`include \"..\/..\/..\/SRC\/CustomModules\/QL_XOR_MUX2_dti.v\"\n/' ./SRC/fabric_netlists.v
# sed -i '19s/^/`include \"..\/..\/..\/SRC\/CustomModules\/GC_FF_dti.v\"\n/' ./SRC/fabric_netlists.v
sed -i '21s/^/`include \"..\/..\/..\/SRC\/CustomModules\/RS_CCFF_dti.v\"\n/' ./SRC/fabric_netlists.v
sed -i '14s/^/`include \"\/cadlib\/gemini\/TSMC16NMFFC\/library\/std_cells\/dti\/7p5t\/rev_220704\/220704_dti_tm16ffc_90c_7p5t_stdcells_rev1p0p1_rapid_fe_views_svt\/220704_dti_tm16ffc_90c_7p5t_stdcells_rev1p0p1_rapid\/verilog\/dti_tm16ffc_90c_7p5t_stdcells_rev1p0p0.v\"\n/' ./SRC/fabric_netlists.v
sed -i '15s/^/`include \"\/cadlib\/virgo\/TSMC16NMFFC\/library\/std_cells\/dti\/7p5t\/rev_181022\/221018_dti_tm16ffc_90c_7p5t_stdcells_rev1p0p8_rapid_fe_views_lvt\/221018_dti_tm16ffc_90c_7p5t_stdcells_rev1p0p8_rapid\/verilog_lvt\/dti_tm16ffc_lvt_90c_7p5t_stdcells_rev1p0p0.v\"\n/' ./SRC/fabric_netlists.v
sed -i '16s/^/`include \"\/cadlib\/virgo\/TSMC16NMFFC\/library\/std_cells\/dti\/7p5t\/rev_181022\/221018_dti_tm16ffc_90c_7p5t_stdcells_rev1p0p8_rapid_fe_views_hvt\/221018_dti_tm16ffc_90c_7p5t_stdcells_rev1p0p8_rapid\/verilog_hvt\/dti_tm16ffc_hvt_90c_7p5t_stdcells_rev1p0p0.v\"\n/' ./SRC/fabric_netlists.v