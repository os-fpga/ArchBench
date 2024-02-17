`timescale 1ns / 1ps

`include "../../rtl/FullAdder32.v"

module FullAdder32_tb;

    parameter WIDTH = 32;

    reg [WIDTH-1:0] a, b;
    reg cin;
    wire [WIDTH-1:0] sum;
    wire cout;

    FullAdder32 #(.WIDTH(WIDTH)) dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    reg clk = 0;
    always #5 clk = ~clk;

    initial begin
        a = 32'hAAAA_AAAA;
        b = 32'h5555_5555;
        cin = 1'b0;
        #10;
        if (a + b + cin == sum) begin
            $display("TEST PASSED: a = %h, b = %h, cin = %b, sum = %h, cout = %b", a, b, cin, sum, cout);
        end else begin
            $display("TEST FAILED: a = %h, b = %h, cin = %b, sum = %h, cout = %b", a, b, cin, sum, cout);
        end

        a = 32'h0;
        b = 32'h0;
        cin = 1'b0;
        #10;
        if (a + b + cin == sum) begin
            $display("TEST PASSED: a = %h, b = %h, cin = %b, sum = %h, cout = %b", a, b, cin, sum, cout);
        end else begin
            $display("TEST FAILED: a = %h, b = %h, cin = %b, sum = %h, cout = %b", a, b, cin, sum, cout);
        end

        a = 32'h0;
        b = 32'h0;
        cin = 1'b1;
        #10;
        if (a + b + cin == sum) begin
            $display("TEST PASSED: a = %h, b = %h, cin = %b, sum = %h, cout = %b", a, b, cin, sum, cout);
        end else begin
            $display("TEST FAILED: a = %h, b = %h, cin = %b, sum = %h, cout = %b", a, b, cin, sum, cout);
        end

        repeat(50) begin
            #1 a = $random;
            #1 b = $random;
            #1 cin = $random;
            #10;
            if (a + b + cin == sum) begin
                $display("TEST PASSED: a = %h, b = %h, cin = %b, sum = %h, cout = %b", a, b, cin, sum, cout);
            end else begin
                $display("TEST FAILED: a = %h, b = %h, cin = %b, sum = %h, cout = %b", a, b, cin, sum, cout);
            end
        end

        $finish;
    end

    // Monitor
    // always @(posedge clk) begin
    //     // Display outputs
    //     $display("a = %h, b = %h, cin = %b, sum = %h, cout = %b", a, b, cin, sum, cout);
    // end

    initial begin
        $dumpfile("tb.vcd");
        $dumpvars(0,FullAdder32_tb);
    end

endmodule
 
