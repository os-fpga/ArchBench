
sed -i "s|// 	wire \[0:0\] out\[0\]_gfpga;|    reg \[4:0\] counter_model=5'b00000;|" $(find . -type f -name "fabric_up5bit_counter_formal_random_top_tb.v")
sed -i "s|\$auto\$clkbufmap.cc:294:execute\$741|clock0|g" $(find . -type f -name "fabric_up5bit_counter_formal_random_top_tb.v")
sed -i "s|\$auto\$clkbufmap.cc:294:execute\$741|clock0|g" $(find . -type f -name "fabric_up5bit_counter_top_formal_verification.v")
sed -i "s|clk_fm\[0\] = clock0\[0\]|clk_fm\[0\] = 1'b0|g" $(find . -type f -name "fabric_up5bit_counter_top_formal_verification.v")
sed -i "s|clk_fm\[15\] = 1'b0|clk_fm[15] = clock0|g" $(find . -type f -name "fabric_up5bit_counter_top_formal_verification.v")
sed -i "s|global_resetn_fm\[0\] = 1'b0|global_resetn_fm\[0\] = 1'b1|g" $(find . -type f -name "fabric_up5bit_counter_top_formal_verification.v")