

    reset = 1;
    op_a  = 'b0;
    op_b  = 'b0;
    repeat(10) @(posedge clock0);

    for (int test_cycle = 0; test_cycle < 50; test_cycle+=1 )begin
        // initialize op a op b data
        for(int i = 0; i < 16; i += 1)begin
            op_a_data[i] = $urandom;
            op_b_data[i] = $urandom;
        end

        // reset check
        #0.5 reset = 0;
        #0.5 reset = 1;
        
        if (out_gfpga !== {`ADDER_WIDTH{1'b0}})begin
            error+=1;
            $display("Status: Test Failed. Test Cycle %2d: Reset Failure",test_cycle);
        end
        else
            $display("Status: Test Passed. Test Cycle %2d: Reset Pass",test_cycle);
        for(int k=0; k<6; k+=1)pipe[k] = 0;
        op_a = {`ADDER_WIDTH{1'b0}};
        op_b = {`ADDER_WIDTH{1'b0}};

        @(posedge clock0);
        #0.5;
            for (int feed_cycle = 0; feed_cycle < (16 + 6); feed_cycle+=1)begin   
                // update pipeline test registers
                //================================================================================================
                pipe[5] = {2{pipe[4][(`ADDER_WIDTH/2) - 1:0]}} + {2{pipe[4][`ADDER_WIDTH - 1:`ADDER_WIDTH/2]}};
                pipe[4] = {2{pipe[3][(`ADDER_WIDTH/2) - 1:0]}} + {2{pipe[3][`ADDER_WIDTH - 1:`ADDER_WIDTH/2]}};
                pipe[3] = {2{pipe[2][(`ADDER_WIDTH/2) - 1:0]}} + {2{pipe[2][`ADDER_WIDTH - 1:`ADDER_WIDTH/2]}};
                pipe[2] = {2{pipe[1][(`ADDER_WIDTH/2) - 1:0]}} + {2{pipe[1][`ADDER_WIDTH - 1:`ADDER_WIDTH/2]}};
                pipe[1] = {2{pipe[0][(`ADDER_WIDTH/2) - 1:0]}} + {2{pipe[0][`ADDER_WIDTH - 1:`ADDER_WIDTH/2]}};
                //================================================================================================
            if(feed_cycle < 16)begin
                op_a = op_a_data[feed_cycle];
                op_b = op_b_data[feed_cycle];
                pipe[0] = op_a_data[feed_cycle] + op_b_data[feed_cycle];
            end
            @(posedge clock0);
            #0.5;
            if(out_gfpga !== pipe[5]) begin
                error+=1;
                $display("Status: Test Failed. Test Cycle %2d: Failure at feed cycle %2d (Observed %h | Expected %h)",test_cycle,feed_cycle,out_gfpga,pipe[5]);
            end
            else
                $display("Status: Test Passed. Test Cycle %2d: Pass at feed cycle %2d (Observed %h | Expected %h)",test_cycle,feed_cycle,out_gfpga,pipe[5]);
        end
    end
