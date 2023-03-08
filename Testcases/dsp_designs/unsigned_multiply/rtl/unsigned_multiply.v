// Quartus II Verilog Template
// Unsigned multiply

module unsigned_multiply
#(parameter WIDTH=5)
(
	input [WIDTH-1:0] dataa,
	input [WIDTH-1:0] datab,
	output [2*WIDTH-1:0] dataout
);

	assign dataout = dataa * datab;

endmodule
