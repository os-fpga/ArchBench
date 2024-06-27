
    task init();
    rd_data = 0;
    wce = 0;
    wa  = 0;
    wd  = 0;
    rce = 0;
    ra  = 0;
    id  = 0;
    repeat(4) @(negedge clock0);
    endtask

    task write(reg[AWIDTH-1:0] addr, reg[DWIDTH-1:0] data);
    @(negedge clock0);
    wa = addr;
    wd = data;
    wce = 1;
    rce = 0;
    @(negedge clock0);
    wce = 0;
    endtask

    task read(reg[AWIDTH-1:0] addr, output reg [DWIDTH-1:0] rd_data);
    @(negedge clock0);
    ra = addr;
    rce = 1;
    wce = 0;
    @(negedge clock0);
    rce = 0;
    @(negedge clock0);
    rd_data = rq_gfpga;
    endtask

    function void compare(reg[AWIDTH-1:0] exp_addr, reg [DWIDTH-1:0] cap_data);
    if (cap_data !== memory[exp_addr]) begin
        $display("Status: Test Failed:: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, exp_addr, memory[exp_addr], cap_data); 
        error++;
    end
    else begin
        $display("Status: Test Passed:: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, exp_addr, memory[exp_addr], cap_data); 
        pass++;
    end 
    endfunction
