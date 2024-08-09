
    function void compare(reg [31:0] cap_data,reg[31:0] exp_addr,reg [8:0] read_addr);
        if (cap_data !== exp_addr) begin
            $display("Status: Test Failed:: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, read_addr,exp_addr, cap_data); 
            error=error+1;
        end
        else begin
            $display("Status: Test Passed:: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, read_addr,exp_addr, cap_data); 
            // pass++;
        end 
    endfunction