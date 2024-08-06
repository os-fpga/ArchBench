
    a = 0;
    b = 0;
    // // id = 0;

    repeat(10) @(negedge clk);
    for (int i = 0; i < 100; i=i+1) begin
        @(negedge clk);
        a = signed'($urandom_range(2**15 -1,0));
        b = signed'($urandom_range(2**15 -1,0));
        c_pred = a*b;
        @(negedge clk);
        // for(int j = 0; j < `MULT_16_SIGNED; j+=1) begin
            // id = j;
            @(negedge clk);
            if(out_gfpga !== c_pred) begin
                $display("Status: Test Failed:: test_cycle=%0d, Expected Output=%0h, Fabric Output=%0h",i,out_gfpga,c_pred);
                error = error + 1;
            end
            else
                $display("Status: Test Passed:: test_cycle=%0d, Expected Output=%0h, Fabric Output=%0h",i,out_gfpga,c_pred);
            // c_pred = signed'(out_gfpga[15:0]) * signed'(out_gfpga[31:16]);
        // end
    end