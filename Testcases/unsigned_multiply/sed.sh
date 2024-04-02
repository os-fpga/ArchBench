
sed -i 's|// reg \[0:0\] dataa\[0\];|bit [9:0] dataout_tb;|' $(find . -type f -name "fabric_unsigned_multiply_formal_random_top_tb.v")
