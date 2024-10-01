
    din <= 1'b0;
    @(posedge clk);
    #0.25;
    if (dout_gfpga === 1'b0)
    $display("Status: Test Passed");
    else  begin
    $display("Status: Test Failed");
    error = error+1; end

    @(negedge clk);
    #0.25;
    if (dout_gfpga === 1'b0)
    $display("Status: Test Passed");
    else  begin
    $display("Status: Test Failed");
    error = error+1; end

    @(posedge clk);
    #0.25;
    if (dout_gfpga === 1'b0)
    $display("Status: Test Passed");
    else  begin
    $display("Status: Test Failed");
    error = error+1; end

    @(negedge clk);
    #0.25;
    if (dout_gfpga === 1'b0)
    $display("Status: Test Passed");
    else  begin
        $display("Status: Test Failed");
        error = error+1; end
    
    repeat(2)@(negedge clk);

    din <= 1'b1;
    @(posedge clk);
    #0.25;
    if (dout_gfpga === 1'b1)
    $display("Status: Test Passed");
    else  begin
    $display("Status: Test Failed");
    error = error+1; end

    @(negedge clk);
    #0.25;
    if (dout_gfpga === 1'b0)
    $display("Status: Test Passed");
    else  begin
    $display("Status: Test Failed");
    error = error+1; end

    @(posedge clk);
    #0.25;
    if (dout_gfpga === 1'b1)
    $display("Status: Test Passed");
    else  begin
    $display("Status: Test Failed");
    error = error+1; end

    @(negedge clk);
    #0.25;
    if (dout_gfpga === 1'b0)
    $display("Status: Test Passed");
    else  begin
        $display("Status: Test Failed");
        error = error+1; end

    @(negedge clk);
    for (int i = 0; i <10; i++) begin
        din <= $urandom();
        @(negedge clk);
        #0.25;
        if (dout_gfpga === expected_dout)
            $display("Status: Test Passed");
        else  begin
            $display("Status: Test Failed");
            error = error+1; end
    end