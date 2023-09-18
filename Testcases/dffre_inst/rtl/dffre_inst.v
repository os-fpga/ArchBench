`timescale 1ns / 1ps

module dffre_inst (
	input clk,
	input i_Reset,
	input i_Enable,
	input i_D,
	output o_Q 
	);

	DFFRE inst(
		.D(i_D),
		.R(i_Reset),
		.E(i_Enable),
		.C(clk),
		.Q(o_Q)
		);

endmodule