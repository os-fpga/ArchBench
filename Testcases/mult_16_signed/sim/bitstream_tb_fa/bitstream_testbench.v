
    a = 0;
    b = 0;
    id = 0;

    #10;
    for (int i = 0; i < 50; i=i+1) begin
        a = signed'($urandom_range(2**16 -1,0));
        b = signed'($urandom_range(2**16 -1,0));
        c_pred = a*b;
        for(int j = 0; j < `MULT_16_SIGNED; j+=1) begin
            id = j;
            @(negedge clk);
            if(c_gfpga !== c_pred) begin
                $display("Status: Test Failed :: Instance[ID]=%0d, test_cycle=%0d, Expected Output=%0h, Fabric Output=%0h",id,i,c_gfpga,c_pred);
                error = error + 1;
            end
            else
                $display("Status: Test Passed :: Instance[ID]=%0d, test_cycle=%0d, Expected Output=%0h, Fabric Output=%0h",id,i,c_gfpga,c_pred);
            c_pred = signed'(c_gfpga[15:0]) * signed'(c_gfpga[31:16]);
        end
    end