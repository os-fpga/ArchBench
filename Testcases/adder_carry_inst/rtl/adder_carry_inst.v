module adder_carry_inst (
    input a,
    input b,
    input cin,
    output c_out,
    output sum
);

    adder_carry inst (.cin(cin),
                      .cout(c_out),
                      .sumout(sum),
                      .p(a),.g(b));

endmodule
