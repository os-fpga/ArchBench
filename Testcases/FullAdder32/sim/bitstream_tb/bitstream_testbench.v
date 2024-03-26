
    repeat(2)@(posedge clk[0]);

    a = 32'hAAAA_AAAA;
    b = 32'h5555_5555;
    cin = 1'b0;
    #10;
    if (a + b + cin == sum_gfpga) begin
        $display("Status: Test Passed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
    end else begin
        $display("Status: Test Failed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
    end

    a = 32'h0;
    b = 32'h0;
    cin = 1'b0;
    #10;
    if (a + b + cin == sum_gfpga) begin
        $display("Status: Test Passed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
    end else begin
        $display("Status: Test Failed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
    end

    a = 32'h0;
    b = 32'h0;
    cin = 1'b1;
    #10;
    if (a + b + cin == sum_gfpga) begin
        $display("Status: Test Passed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
    end else begin
        $display("Status: Test Failed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
    end

    a = 32'h1;
    b = 32'h0;
    cin = 1'b0;
    #10;
    if (a + b + cin == sum_gfpga) begin
        $display("Status: Test Passed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
    end else begin
        $display("Status: Test Failed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
    end

    a = 32'h0;
    b = 32'h1;
    cin = 1'b0;
    #10;
    if (a + b + cin == sum_gfpga) begin
        $display("Status: Test Passed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
    end else begin
        $display("Status: Test Failed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
    end

    a = 32'h1;
    b = 32'h1;
    cin = 1'b1;
    #10;
    if (a + b + cin == sum_gfpga) begin
        $display("Status: Test Passed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
    end else begin
        $display("Status: Test Failed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
    end

    a = 32'h80000000;
    b = 32'h0;
    cin = 1'b0;
    #10;
    if (a + b + cin == sum_gfpga) begin
        $display("Status: Test Passed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
    end else begin
        $display("Status: Test Failed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
    end

    a = 32'h0;
    b = 32'h80000000;
    cin = 1'b0;
    #10;
    if (a + b + cin == sum_gfpga) begin
        $display("Status: Test Passed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
    end else begin
        $display("Status: Test Failed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
    end

    a = 32'h0;
    b = 32'h80000000;
    cin = 1'b1;
    #10;
    if (a + b + cin == sum_gfpga) begin
        $display("Status: Test Passed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
    end else begin
        $display("Status: Test Failed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
    end

    a = 32'h80000000;
    b = 32'h80000000;
    cin = 1'b1;
    #10;
    if (a + b + cin == sum_gfpga) begin
        $display("Status: Test Passed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
    end else begin
        $display("Status: Test Failed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
    end

    repeat(50) begin
        #1 a = $random;
        #1 b = $random;
        #1 cin = $random;
        #10;
        if (a + b + cin == sum_gfpga) begin
            $display("Status: Test Passed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
        end else begin
            $display("Status: Test Failed: a = %h, b = %h, cin = %b, sum_gfpga = %h, cout_gfpga = %b", a, b, cin, sum_gfpga, cout_gfpga);
        end
    end