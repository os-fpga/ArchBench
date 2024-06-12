
    data = 0;
    addr = 0;
    we=0;

    // repeat(10) @(negedge clock0[0]);
    // data=32'haaaaaaaa;
    // memory[addr] = data;
    // we=1;
    // repeat(5) @(negedge clock0[0]);
    // if (q_gfpga !== memory[addr]) begin
    //     $display("Status: Test Failed: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, addr, memory[addr], q_gfpga); 
    // end
    // else begin
    //     $display("Status: Test Passed: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, addr, memory[addr], q_gfpga); 
    // end 
    // repeat(10) @(negedge clock0[0]);
    // we=0;
    // repeat(5) @(negedge clock0[0]);
    // if (q_gfpga !== memory[addr]) begin
    //     $display("Status: Test Failed: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, addr, memory[addr], q_gfpga); 
    // end
    // else begin
    //     $display("Status: Test Passed: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, addr, memory[addr], q_gfpga); 
    // end 
    // repeat(10) @(negedge clock0[0]);

    // data=32'h11111111;
    // addr = 10'b0000000001;
    // memory[addr] = data;
    // we=1;
    // repeat(5) @(negedge clock0[0]);
    // if (q_gfpga !== memory[addr]) begin
    //     $display("Status: Test Failed: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, addr, memory[addr], q_gfpga); 
    // end
    // else begin
    //     $display("Status: Test Passed: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, addr, memory[addr], q_gfpga); 
    // end 
    // repeat(10) @(negedge clock0[0]);
    // we=0;
    // repeat(5) @(negedge clock0[0]);
    // if (q_gfpga !== memory[addr]) begin
    //     $display("Status: Test Failed: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, addr, memory[addr], q_gfpga); 
    // end
    // else begin
    //     $display("Status: Test Passed: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, addr, memory[addr], q_gfpga); 
    // end 
    // repeat(10) @(negedge clock0[0]);

    // data=32'h55555555;
    // addr = 10'b0000000010;
    // memory[addr] = data;
    // we=1;
    // repeat(5) @(negedge clock0[0]);
    // if (q_gfpga !== memory[addr]) begin
    //     $display("Status: Test Failed: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, addr, memory[addr], q_gfpga); 
    // end
    // else begin
    //     $display("Status: Test Passed: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, addr, memory[addr], q_gfpga); 
    // end 
    // repeat(10) @(negedge clock0[0]);
    // we=0;
    // repeat(5) @(negedge clock0[0]);
    // if (q_gfpga !== memory[addr]) begin
    //     $display("Status: Test Failed: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, addr, memory[addr], q_gfpga); 
    // end
    // else begin
    //     $display("Status: Test Passed: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, addr, memory[addr], q_gfpga); 
    // end 
    // repeat(10) @(negedge clock0[0]);

    for (int i = 0; i<1023; i++) begin
        wdata = $random();
        address = $random();
        memory[address] = wdata;
        //write
        write(address, wdata);
        //Read
        read(address, rd_data);
        compare(address, rd_data);
    end
