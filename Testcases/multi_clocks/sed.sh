sed -i "s|global_resetn_fm\[0\] = 1'b0|global_resetn_fm\[0\] = 1'b1|g" $(find . -type f -name "fabric_multi_clocks_top_formal_verification.v")
