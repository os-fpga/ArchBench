sed -i "s|ff_inst.||g" $(find . -type f -name "fabric_lut_ff_mux_formal_random_top_tb.v")
sed -i "s|ff_inst.||g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")
sed -i "s|\bclk\b|clock0|g" $(find . -type f -name "fabric_lut_ff_mux_top_formal_verification.v")
sed -i "s|\bclk\b|clock0|g" $(find . -type f -name "fabric_lut_ff_mux_formal_random_top_tb.v")
