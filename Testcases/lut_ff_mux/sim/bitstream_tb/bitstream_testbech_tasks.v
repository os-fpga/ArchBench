
    task one();
    if(Q_gfpga === 1) begin
    $display("Status: Test Passed"); 
    end
    else begin
        $display("Status: Test Failed"); 
    end
    endtask

    task zero();
    if(Q_gfpga === 0) begin
    $display("Status: Test Passed");
    end
    else begin
        $display("Status: Test Failed");
    end
    endtask