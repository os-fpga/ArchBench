create_design canny_edge_detection_top
target_device 1VG28
add_include_path ./rtl
add_library_path ./rtl
add_library_ext .v .sv
add_design_file ./rtl/ninerowsbuffer.vhd
add_design_file ./rtl/krnl2.vhd
add_design_file ./rtl/kernel.vhd
add_design_file ./rtl/filterV.vhd
add_design_file ./rtl/FIFOLineBuffer.vhd
add_design_file ./rtl/DoubleLineBuffer.vhd
add_design_file ./rtl/CacheSystem3.vhd
add_design_file ./rtl/CacheSystem2.vhd
add_design_file ./rtl/buffer.vhd
add_design_file ./rtl/wrapper.vhd
add_design_file ./rtl/top.vhd
set_top_module top

routability_flow
