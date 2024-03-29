
    b <= 1'b0;
    a <= 1'b0;
    #5
    if (c_gfpga === 0)
    $display("Status: Test Passed");
    else  
    $display("Status: Test Failed");
    
    a = 1'b0; 
    b = 1'b1;
    #5
    if (c_gfpga === 1)
    $display("Status: Test Passed");
    else  
    $display("Status: Test Failed");

    a = 1'b1;
    b = 1'b0;
    #5
    if (c_gfpga === 1)
    $display("Status: Test Passed");
    else  
    $display("Status: Test Failed");

    a = 1'b1;
    b = 1'b1;
    #5
    if (c_gfpga === 0)
    $display("Status: Test Passed");
    else  
    $display("Status: Test Failed");

    a = 1'b0;
    b = 1'b1;
    #5
    if (c_gfpga === 1)
    $display("Status: Test Passed");
    else  
    $display("Status: Test Failed");

    a = 1'b1;
    b = 1'b0;
    #5
    if (c_gfpga === 1)
    $display("Status: Test Passed");
    else  
    $display("Status: Test Failed");

    a = 1'b1;
    b = 1'b1;
    #5
    if (c_gfpga === 0)
    $display("Status: Test Passed");
    else  
    $display("Status: Test Failed");
    