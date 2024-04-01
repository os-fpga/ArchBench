
    initial begin
        #30;
        if (!i_Reset || !o_Q_gfpga) begin
            $display("Status: Test Passed: i_Reset = %b, o_Q_gfpga = %b", i_Reset, o_Q_gfpga);
        end
        else begin
            $display("Status: Test Failed: i_Reset = %b, o_Q_gfpga = %b", i_Reset, o_Q_gfpga);
        end
    end
    
    always @(negedge clock0) begin
        #20;
        if (!i_Reset) begin
            if (!o_Q_gfpga) begin
                $display("Status: Test Passed: i_Reset = %b, o_Q_gfpga = %b", i_Reset, o_Q_gfpga);
            end
            else begin
                $display("Status: Test Failed: i_Reset = %b, o_Q_gfpga = %b", i_Reset, o_Q_gfpga);
            end
        end
    end

    always @(negedge clock0) begin
        #20;
        if (i_Enable && i_Reset) begin
            if (o_Q_gfpga === i_D) begin
                $display("Status: Test Passed: Output o_Q_gfpga: %b, input i_D: %b", o_Q_gfpga, i_D);
            end
            else begin
                $display("Status: Test Failed: Output o_Q_gfpga: %b, input i_D: %b", o_Q_gfpga, i_D);
            end
        end
    end
