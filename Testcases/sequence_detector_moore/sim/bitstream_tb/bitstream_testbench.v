
    rst = 0;
    in = 0;

    #10;    
    $display("Reset Asserted!");
    rst = 1;
    repeat(2) @(posedge clock0);
    if(state_gfpga[3] !== 0)begin
        $display("Status: Test Failed");
    end
    else
        $display("Status: Test Passed");
    repeat(3) @(posedge clock0);
    // $display("Reset Desserted!");
    rst=0;

    for (int i = 0; i < 1000; i+=1)begin
    q = $urandom_range(0,1);
    value[0] = q;
    in = q;
    @(posedge clock0);
    // $display("%b",q);
    #1;
    if(state_gfpga[3] !== check)begin
        $display("Status: Test Failed: wrong pattern detected");
        error+=1;
    end
    else
        $display("Status: Test Passed");
    if(state_gfpga[3] === 1)count+=1;
    value <<= 1;
    end
    $display("Pattern detected %d times",count);
