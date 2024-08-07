
module mult_16_signed (out, a, b);
output signed [31:0] out;
wire signed [31:0] out;
input signed [15:0] a;
input signed [15:0] b;

assign out = a * b;

endmodule
