
    task stimulus;
    input [7:0] q_output;
    input [7:0] check;
    begin
        if (q_output === check) begin
            $display("Status: Test Passed: %0t q_output: %0b, expected_output: %0b", $time, q_output, check);
        end
        else begin
            $display("Status: Test Failed: %0t q_output: %0b, expected_output: %0b", $time, q_output, check);
        end
    end
    endtask