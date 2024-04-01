
    a <= 2'b00;
    b <= 2'b00;
    #5;
    if (z_gfpga==0)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");

    a <= 2'b00;
    b <= 2'b01;
    #5;
    if (z_gfpga==0)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");

    a <= 2'b00;
    b <= 2'b10;
    #5;
    if (z_gfpga==0)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");

    a <= 2'b00;
    b <= 2'b11;
    #5;
    if (z_gfpga==0)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");

    a <= 2'b01;
    b <= 2'b00;
    #5;
    if (z_gfpga==0)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");

    a <= 2'b01;
    b <= 2'b01;
    #5;
    if (z_gfpga==4'b0001)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");

    a <= 2'b01;
    b <= 2'b10;
    #5;
    if (z_gfpga==4'b0010)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");

    a <= 2'b01;
    b <= 2'b11;
    #5;
    if (z_gfpga==4'b0011)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");

    a <= 2'b10;
    b <= 2'b00;
    #5;
    if (z_gfpga==4'b0000)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");

    a <= 2'b10;
    b <= 2'b01;
    #5;
    if (z_gfpga==4'b0010)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");

    a <= 2'b10;
    b <= 2'b10;
    #5;
    if (z_gfpga==4'b0100)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");

    a <= 2'b10;
    b <= 2'b11;
    #5;
    if (z_gfpga==4'b0110)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");

    a <= 2'b11;
    b <= 2'b00;
    #5;
    if (z_gfpga==4'b0000)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");

    a <= 2'b11;
    b <= 2'b01;
    #5;
    if (z_gfpga==4'b0011)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");

    a <= 2'b11;
    b <= 2'b10;
    #5;
    if (z_gfpga==4'b0110)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");

    a <= 2'b11;
    b <= 2'b11;
    #5;
    if (z_gfpga==4'b1001)
        $display("Status: Test Passed");
    else
        $display("Status: Test Failed");
