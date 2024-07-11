
    //push
    task push ();
        @(negedge clock0);
        write = 1;
        write_data = {$urandom_range(32'hFFFF_FFFF, 32'h1), 4'hF};
        @(negedge clock0);
        write = 0;
        exp_q.push_back(write_data);
        $display ("PUSH DATA:%0h FULL:%0b EMPTY:%0b", write_data, full_gfpga, empty_gfpga);
        endtask
    //pop
    task pop ();
        @(negedge clock0);
        read = 1;
        @(negedge clock0);
        read = 0;
        q_rdata = exp_q.pop_front();

        if (q_rdata!==read_data_gfpga) begin 
            error+=1; 
            $display("Status: Test Failed:: MISMATCH! PUSH DATA:%0h, POP DATA:%0h",q_rdata, read_data_gfpga);
        end
        else $display ("Status: Test Passed:: POP DATA:%0h FULL:%0b EMPTY:%0b", read_data_gfpga, full_gfpga, empty_gfpga);
    endtask
