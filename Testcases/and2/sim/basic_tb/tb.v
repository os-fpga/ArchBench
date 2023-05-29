module and_gate_testbench;

  reg a, b;
  wire c;

  and2 uut (.a(a), .b(b), .c(c));

  initial begin
    $monitor("a = %b, b = %b, c = %b", a, b, c);
    
    // Test case 1: a = 0, b = 0
    a = 0;
    b = 0;
    #10;

    // Test case 2: a = 0, b = 1
    a = 0;
    b = 1;
    #10;

    // Test case 3: a = 1, b = 0
    a = 1;
    b = 0;
    #10;

    // Test case 4: a = 1, b = 1
    a = 1;
    b = 1;
    #10;

    $finish;
  end

initial begin
    $dumpfile("tb.vcd");
    $dumpvars;
end

endmodule
