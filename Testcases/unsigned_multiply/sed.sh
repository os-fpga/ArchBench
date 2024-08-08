
sed -i 's|// reg \[0:0\] dataa\[0\];|bit [15:0] dataout_tb;|' $(find . -type f -name "fabric_unsigned_multiply_formal_random_top_tb.v")
sed -i "s|clk_fm\[15\] = 1'b0;|clk_fm\[15\] = clk;|g" $(find . -type f -name "fabric_unsigned_multiply_top_formal_verification.v")
sed -i "s|global_resetn_fm\[0\] = 1'b0;|global_resetn_fm\[0\] = 1'b1;|g" $(find . -type f -name "fabric_unsigned_multiply_top_formal_verification.v")
