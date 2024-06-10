
    reset = 0;
    lr = 0;
    loopback_en = 0;

    #50;
    @(negedge clock0);
    $display("Counter reset asserted for 1 clock cycle!");
    reset = 1;
    data = {1'b1,{(`REGISTER_WIDTH - 1){1'b0}}};
    @(negedge clock0);
    reset = 0;
    if(out_gfpga !== data)begin
        error+=1;
        $display("Status: Test Failed Reset Failed!");
    end else begin
        $display("Status: Test Passed!");
        $display("Counter reset deasserted successfully!");
    end

    // Testing counter and loopback
    loopback_en = 1;

    // Right Shift Testing
    $display("Testing Right Shift Operation!");
    lr = 0;
    for (int test_cycles = 0; test_cycles < `REGISTER_WIDTH + 2; test_cycles+=1)begin
        @(posedge clock0);
        if(data[0] == 1'b1) data = {1'b1,{(`REGISTER_WIDTH - 1){1'b0}}};
        else data >>= 1;
        #1 if(out_gfpga !== data)begin
            error+=1;
            $display("Status: Test Failed ==> Ring Counter Output %b | Expected %b",out_gfpga,data);
        end
        else
            $display("Status: Test Passed ==> Ring Counter Output %b | Expected %b",out_gfpga,data);
        if(loopback_error_gfpga == 1)begin
            error+=1;
            $display("Status: Test Failed ==> [Loopback] Output %b | Input %b",out_gfpga,counter_in);
        end
        else
            $display("Status: Test Passed ==> [Loopback] Output %b | Input %b",out_gfpga,counter_in);
    end
    // Left Shift Testing
    $display("Testing Left Shift Operation!");
    lr = 1;
    for (int test_cycles = 0; test_cycles < `REGISTER_WIDTH + 2; test_cycles+=1)begin
        @(posedge clock0);
        if(data[`REGISTER_WIDTH - 1] == 1'b1) data = {{(`REGISTER_WIDTH - 1){1'b0}},1'b1};
        else data <<= 1;
        #1 if(out_gfpga !== data)begin
            error+=1;
            $display("Status: Test Failed ==> Ring Counter Output %b | Expected %b",out_gfpga,data);
        end  
        else
            $display("Status: Test Passed ==> Ring Counter Output %b | Expected %b",out_gfpga,data);
        if(loopback_error_gfpga == 1)begin
            error+=1;
            $display("Status: Test Failed ==> [Loopback] Output %b | Input %b",out_gfpga,counter_in);
        end
        else
            $display("Status: Test Passed ==> [Loopback] Output %b | Input %b",out_gfpga,counter_in);
    end
