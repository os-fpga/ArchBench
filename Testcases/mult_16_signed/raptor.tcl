create_design mult_16_signed
target_device GEMINI_COMPACT_10x8
add_design_file ./mult_16_signed.v
set_top_module mult_16_signed

analyze
synthesize
packing
place
route
sta
power
bitstream write_xml