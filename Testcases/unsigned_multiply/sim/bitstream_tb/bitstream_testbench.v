
    reset = 1;
    dataa = 0;
    datab = 0;
    repeat(10) @(negedge clk[0]);
    reset = 0;
    repeat(10) @(negedge clk[0]);

    for (int i = 0; i < 100; i=i+1) begin
        @(negedge clk[0]);
        dataa = $urandom_range(2**8 -1,0);
        datab = $urandom_range(2**8 -1,0);
        dataout_tb = dataa*datab;
        @(posedge clk[0]);
        #10;
        @(posedge clk[0])
        if(dataout_tb !== dataout_gfpga) begin
            $display("Status: Test Failed: @%0t dataa: %0d, datab: %0d, dataout_gfpga: %0d, dataout_tb: %0d", $time, dataa, datab, dataout_gfpga, dataout_tb); 
        end
        else
            $display("Status: Test Passed: @%0t dataa: %0d, datab: %0d, dataout_gfpga: %0d, dataout_tb: %0d", $time, dataa, datab, dataout_gfpga, dataout_tb); 
    end
    