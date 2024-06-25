sed -i "s|clk_fm\[14\] = 1'b0;|clk_fm\[14\] = clock1;|g" $(find . -type f -name "fabric_dpram_36x1024_top_formal_verification.v")
sed -i "s|clk_fm\[15\] = 1'b0;|clk_fm\[15\] = clock0;|g" $(find . -type f -name "fabric_dpram_36x1024_top_formal_verification.v")
sed -i "s|global_resetn_fm\[0\] = 1'b0;|global_resetn_fm\[0\] = 1'b1;|g" $(find . -type f -name "fabric_dpram_36x1024_top_formal_verification.v")
sed -i "s|// ----- BEGIN Local short connections -----|\`include \"BIT_SIM/initialize.v\"|g" $(find . -type f -name "fpga_top.v")
