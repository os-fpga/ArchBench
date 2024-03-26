    D0 <= 1'b0;
    D1 <= 1'b1;
    D2 <= 1'b0;
    D3 <= 1'b1;
    D4 <= 1'b0;
    D5 <= 1'b1;
    D6 <= 1'b0;
    D7 <= 1'b1;

    S0 <= 1'b0;
    S1 <= 1'b0;
    S2 <= 1'b0;

    #5;
    if(out_gfpga==0)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");
    #5;
    S0 <= 1'b1;
    S1 <= 1'b0;
    S2 <= 1'b0;
    #5;
    if(out_gfpga==1)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");
    #5;
    S0 <= 1'b0;
    S1 <= 1'b1;
    S2 <= 1'b0;
    #5;
    if(out_gfpga==0)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");
    #5;
    S0 <= 1'b1;
    S1 <= 1'b1;
    S2 <= 1'b0;
    #5;
    if(out_gfpga==1)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");
    #5;
    S0 <= 1'b0;
    S1 <= 1'b0;
    S2 <= 1'b1;
    #5;
    if(out_gfpga==0)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");
    #5;
    S0 <= 1'b1;
    S1 <= 1'b0;
    S2 <= 1'b1;
    #5;
    if(out_gfpga==1)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");
    #5;
    S0 <= 1'b0;
    S1 <= 1'b1;
    S2 <= 1'b1;
    #5;
    if(out_gfpga==0)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");
    #5;
    S0 <= 1'b1;
    S1 <= 1'b1;
    S2 <= 1'b1;
    #5;
    if(out_gfpga==1)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");

    S0 <= 1'b0;
    S1 <= 1'b0;
    S2 <= 1'b0;