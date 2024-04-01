
sed -i "s|// 	wire \[0:0\] out\[0\]_gfpga;|    reg \[4:0\] counter_model=5'b00000;|" $(find . -type f -name "fabric_up5bit_counter_formal_random_top_tb.v")