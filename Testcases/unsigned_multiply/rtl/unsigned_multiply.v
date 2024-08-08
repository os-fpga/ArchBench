module unsigned_multiply
#(parameter WIDTH=8)
(
	input clk,reset,
	input [WIDTH-1:0] dataa,
	input [WIDTH-1:0] datab,
	output reg [2*WIDTH-1:0] dataout
);

	reg [WIDTH-1:0] dataa_reg;
	reg [WIDTH-1:0] datab_reg;
	wire [2*WIDTH-1:0] mult_out;

	assign mult_out = dataa_reg * datab_reg;

	always @ (posedge clk or posedge reset)
	begin
		if (reset) begin
			dataa_reg <= 0;
			datab_reg <= 0;
			dataout <= 0;
		end
		else begin
			dataa_reg <= dataa;
			datab_reg <= datab;
			dataout <= mult_out;
		end
	end

endmodule
