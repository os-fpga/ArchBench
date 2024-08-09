
    we=0; 
    reset=1;
    out_en=0;
    read_addr=0;
    write_addr=0;
    a=0;
    b=0;

    repeat(5) @(negedge clk);
    reset=0;
    repeat(5) @(negedge clk);
    reset=1;
    repeat(10) @(negedge clk);
    a=32'h00000000;
    b=32'h11111111;
    c_pred=a+b;
    we=1;
    out_en=1;
    memory[write_addr]=c_pred;
    repeat(5) @(negedge clk);
    we=0;
    repeat(5) @(negedge clk);
    if (dout_gfpga !== c_pred) begin
        $display("Status: Test Failed: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, read_addr, c_pred, dout_gfpga); 
        error = error+1;
    end
    else begin
        $display("Status: Test Passed: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, read_addr, c_pred, dout_gfpga); 
    end 
    repeat(10) @(negedge clk);

    for (int i = 1; i<512; i++) begin
        @(negedge clk);
        a = $urandom_range(0, ((2**32)-1));
        b = $urandom_range(0, ((2**32)-1));
        c_pred=a+b;
        we=1;
        out_en=1;
        read_addr=i;
        write_addr=i;
        address=write_addr;
        memory[address]=c_pred;
        repeat(5) @(negedge clk);
        we=0;
        repeat(5) @(negedge clk);
        compare(dout_gfpga,c_pred,read_addr);
    end

    for (int i = 1; i<100; i++) begin
        @(negedge clk);
        out_en=1;
        read_addr=$urandom_range(0,511);
        address=read_addr;
        repeat(10) @(negedge clk);
        compare(dout_gfpga,memory[address],read_addr);
    end
