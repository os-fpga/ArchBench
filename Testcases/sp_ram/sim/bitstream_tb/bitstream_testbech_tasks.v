
    // task write(reg[9:0] address, reg[31:0] w_data);
    // @(negedge clock0);
    // addr = address;
    // data = w_data;
    // we = 1;
    // @(negedge clock0);
    // // we = 0;
    // endtask

    // task read(reg[9:0] address, output reg [31:0] rd_data);
    // @(negedge clock0);
    // // we = 0;
    // addr = address;
    // @(negedge clock0);
    // rd_data = q_gfpga;
    // endtask

    // function void compare(reg[9:0] exp_addr, reg [31:0] cap_data);
    // if (cap_data !== memory[exp_addr]) begin
    //     $display("Status: Test Failed: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, exp_addr, memory[exp_addr], cap_data); 
    // end
    // else begin
    //     $display("Status: Test Passed: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, exp_addr, memory[exp_addr], cap_data); 
    // end 
    // endfunction