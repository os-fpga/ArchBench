module FullAdder32 #(parameter WIDTH=32) (
    input [WIDTH-1:0] a,
    input [WIDTH-1:0] b,
    input cin,
    output [WIDTH-1:0] sum,
    output cout
);
    wire [WIDTH-1:0] carry;

    assign carry[0] = cin;
  
    genvar i;
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin
            assign {carry[i+1], sum[i]} = a[i] + b[i] + carry[i];
        end
    endgenerate

    assign cout = carry[31];
endmodule
