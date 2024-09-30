
    din_ibuf <= 1'b0;
    @(posedge clk_ibuf);
    #0.25;
    if (dout_obuf_gfpga === 1'b0)
    $display("Status: Test Passed");
    else  begin
    $display("Status: Test Failed");
    error = error+1; end

    @(negedge clk_ibuf);
    #0.25;
    if (dout_obuf_gfpga === 1'b0)
    $display("Status: Test Passed");
    else  begin
    $display("Status: Test Failed");
    error = error+1; end

    @(posedge clk_ibuf);
    #0.25;
    if (dout_obuf_gfpga === 1'b0)
    $display("Status: Test Passed");
    else  begin
    $display("Status: Test Failed");
    error = error+1; end

    @(negedge clk_ibuf);
    #0.25;
    if (dout_obuf_gfpga === 1'b0)
    $display("Status: Test Passed");
    else  begin
        $display("Status: Test Failed");
        error = error+1; end
    
    repeat(2)@(negedge clk_ibuf);

    din_ibuf <= 1'b1;
    @(posedge clk_ibuf);
    #0.25;
    if (dout_obuf_gfpga === 1'b1)
    $display("Status: Test Passed");
    else  begin
    $display("Status: Test Failed");
    error = error+1; end

    @(negedge clk_ibuf);
    #0.25;
    if (dout_obuf_gfpga === 1'b0)
    $display("Status: Test Passed");
    else  begin
    $display("Status: Test Failed");
    error = error+1; end

    @(posedge clk_ibuf);
    #0.25;
    if (dout_obuf_gfpga === 1'b1)
    $display("Status: Test Passed");
    else  begin
    $display("Status: Test Failed");
    error = error+1; end

    @(negedge clk_ibuf);
    #0.25;
    if (dout_obuf_gfpga === 1'b0)
    $display("Status: Test Passed");
    else  begin
        $display("Status: Test Failed");
        error = error+1; end

    @(negedge clk_ibuf);
    for (int i = 0; i <10; i++) begin
        din_ibuf <= $urandom();
        @(negedge clk_ibuf);
        #0.25;
        if (dout_obuf_gfpga === expected_dout)
            $display("Status: Test Passed");
        else  begin
            $display("Status: Test Failed");
            error = error+1; end
    end