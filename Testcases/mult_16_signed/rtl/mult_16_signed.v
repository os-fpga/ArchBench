`define MULT_16_SIGNED 2

module mult_16_signed_unit (out, a, b);
output signed [31:0] out;
wire signed [31:0] out;
input signed [15:0] a;
input signed [15:0] b;

assign out = a * b;

endmodule



module mult_16_signed (id, c, a, b);
output signed [31:0] c;
wire signed [31:0] c;
input signed [15:0] a;
input signed [15:0] b;
input [0:$clog2(`MULT_16_SIGNED) - 1] id;


wire [15:0] input_a [0:`MULT_16_SIGNED - 1];
wire [15:0] input_b [0:`MULT_16_SIGNED - 1];
wire [31:0] output_c [0:`MULT_16_SIGNED - 1];

genvar i;
generate
  for(i=0;i<`MULT_16_SIGNED; i=i+1)begin
    mult_16_signed_unit a0(output_c[i],input_a[i], input_b[i]);
    if(i > 0)begin
    assign input_a[i] = output_c[i-1][15:0];
    assign input_b[i] = output_c[i-1][31:16];
  end
  end
endgenerate

assign input_a[0] = a;
assign input_b[0] = b;
assign c = output_c[id];



endmodule