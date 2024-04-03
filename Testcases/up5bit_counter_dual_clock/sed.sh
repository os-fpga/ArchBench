sed -i "s|clk_fm\[0\] = clock0\[0\]|clk_fm\[0\] = 1'b0|" $(find . -type f -name "fabric_up5bit_counter_dual_clock_top_formal_verification.v")
sed -i "s|clk_fm\[14\] = 1'b0|clk_fm\[14\] = clock1|" $(find . -type f -name "fabric_up5bit_counter_dual_clock_top_formal_verification.v")
sed -i "s|clk_fm\[15\] = 1'b0|clk_fm\[15\] = clock0|" $(find . -type f -name "fabric_up5bit_counter_dual_clock_top_formal_verification.v")
sed -i "s|global_resetn_fm\[0\] = 1'b0|global_resetn_fm\[0\] = 1'b1|g" $(find . -type f -name "fabric_up5bit_counter_dual_clock_top_formal_verification.v")
