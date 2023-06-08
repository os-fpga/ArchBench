// `include "large_mux.v"
// `include "memory_cntrl.v"
// `include "register.v"
// `include "full_adder_top.v"
// `include "d_latch_top.v"
// `include "shift_reg_top.v"
// `include "mod_n_counter.v"
// `include "paritygenerator_top.v"

module design412_1_30_top_neg #(parameter WIDTH=32,CHANNEL=1) (clk, rst, in, out);

	localparam OUT_BUS=CHANNEL*WIDTH;
	input clk,rst;
	input [WIDTH-1:0] in;
	output [WIDTH-1:0] out;

	reg [WIDTH-1:0] d_in0;
	wire [WIDTH-1:0] d_out0;

	reg [OUT_BUS-1:0] tmp;

	always @ (negedge clk or posedge rst) begin
		if (rst)
			tmp <= 0;
		else
			tmp <= {tmp[OUT_BUS-(WIDTH-1):0],in};
	end

	always @ (negedge clk) begin
		d_in0 <= tmp[WIDTH-1:0];
	end

	design412_1_30 #(.WIDTH(WIDTH)) design412_1_30_inst(.d_in0(d_in0),.d_out0(d_out0),.clk(clk),.rst(rst));

	assign out = d_out0;

endmodule

module design412_1_30 #(parameter WIDTH=32) (d_in0, d_out0, clk, rst);
	input clk;
	input rst;
	input [WIDTH-1:0] d_in0; 
	output [WIDTH-1:0] d_out0; 

	wire [WIDTH-1:0] wire_d0_0;
	wire [WIDTH-1:0] wire_d0_1;
	wire [WIDTH-1:0] wire_d0_2;
	wire [WIDTH-1:0] wire_d0_3;
	wire [WIDTH-1:0] wire_d0_4;
	wire [WIDTH-1:0] wire_d0_5;
	wire [WIDTH-1:0] wire_d0_6;
	wire [WIDTH-1:0] wire_d0_7;
	wire [WIDTH-1:0] wire_d0_8;
	wire [WIDTH-1:0] wire_d0_9;
	wire [WIDTH-1:0] wire_d0_10;
	wire [WIDTH-1:0] wire_d0_11;
	wire [WIDTH-1:0] wire_d0_12;
	wire [WIDTH-1:0] wire_d0_13;
	wire [WIDTH-1:0] wire_d0_14;
	wire [WIDTH-1:0] wire_d0_15;
	wire [WIDTH-1:0] wire_d0_16;
	wire [WIDTH-1:0] wire_d0_17;
	wire [WIDTH-1:0] wire_d0_18;
	wire [WIDTH-1:0] wire_d0_19;
	wire [WIDTH-1:0] wire_d0_20;
	wire [WIDTH-1:0] wire_d0_21;
	wire [WIDTH-1:0] wire_d0_22;
	wire [WIDTH-1:0] wire_d0_23;
	wire [WIDTH-1:0] wire_d0_24;
	wire [WIDTH-1:0] wire_d0_25;
	wire [WIDTH-1:0] wire_d0_26;
	wire [WIDTH-1:0] wire_d0_27;
	wire [WIDTH-1:0] wire_d0_28;

	// mod_n_counter #(.WIDTH(WIDTH)) mod_n_counter_instance100(.data_in(d_in0),.data_out(wire_d0_0),.clk(clk),.rst(rst));            //channel 1
	d_latch_top #(.WIDTH(WIDTH)) d_latch_top_instance101(.data_in(d_in0),.data_out(wire_d0_1),.clk(clk),.rst(rst));
	single_port_ram_top #(.WIDTH(WIDTH)) single_port_ram_top_instance102(.data_in(wire_d0_1),.data_out(wire_d0_2),.clk(clk),.rst(rst));
	shift_reg_top #(.WIDTH(WIDTH)) shift_reg_top_instance103(.data_in(wire_d0_2),.data_out(wire_d0_3),.clk(clk),.rst(rst));
	single_port_ram_top #(.WIDTH(WIDTH)) single_port_ram_top_instance104(.data_in(wire_d0_3),.data_out(wire_d0_4),.clk(clk),.rst(rst));
	// full_adder_top #(.WIDTH(WIDTH)) full_adder_top_instance105(.data_in(wire_d0_4),.data_out(wire_d0_5),.clk(clk),.rst(rst));
	// full_adder_top #(.WIDTH(WIDTH)) full_adder_top_instance106(.data_in(wire_d0_5),.data_out(wire_d0_6),.clk(clk),.rst(rst));
	// full_adder_top #(.WIDTH(WIDTH)) full_adder_top_instance107(.data_in(wire_d0_6),.data_out(wire_d0_7),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance108(.data_in(wire_d0_4),.data_out(wire_d0_8),.clk(clk),.rst(rst));
	// full_adder_top #(.WIDTH(WIDTH)) full_adder_top_instance109(.data_in(wire_d0_8),.data_out(wire_d0_9),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance1010(.data_in(wire_d0_8),.data_out(wire_d0_10),.clk(clk),.rst(rst));
	// paritygenerator_top #(.WIDTH(WIDTH)) paritygenerator_top_instance1011(.data_in(wire_d0_10),.data_out(wire_d0_11),.clk(clk),.rst(rst));
	// large_mux #(.WIDTH(WIDTH)) large_mux_instance1012(.data_in(wire_d0_11),.data_out(wire_d0_12),.clk(clk),.rst(rst));
	// memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance1013(.data_in(wire_d0_11),.data_out(wire_d0_13),.clk(clk),.rst(rst));
	d_latch_top #(.WIDTH(WIDTH)) d_latch_top_instance1014(.data_in(wire_d0_10),.data_out(wire_d0_14),.clk(clk),.rst(rst));
	large_adder #(.WIDTH(WIDTH)) large_adder_instance1015(.data_in(wire_d0_14),.data_out(wire_d0_15),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance1016(.data_in(wire_d0_15),.data_out(wire_d0_16),.clk(clk),.rst(rst));
	d_latch_top #(.WIDTH(WIDTH)) d_latch_top_instance1017(.data_in(wire_d0_16),.data_out(wire_d0_17),.clk(clk),.rst(rst));
	// mod_n_counter #(.WIDTH(WIDTH)) mod_n_counter_instance1018(.data_in(wire_d0_17),.data_out(wire_d0_18),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance1019(.data_in(wire_d0_17),.data_out(wire_d0_19),.clk(clk),.rst(rst));
	shift_reg_top #(.WIDTH(WIDTH)) shift_reg_top_instance1020(.data_in(wire_d0_19),.data_out(wire_d0_20),.clk(clk),.rst(rst));
	// mod_n_counter #(.WIDTH(WIDTH)) mod_n_counter_instance1021(.data_in(wire_d0_20),.data_out(wire_d0_21),.clk(clk),.rst(rst));
	// large_mux #(.WIDTH(WIDTH)) large_mux_instance1022(.data_in(wire_d0_21),.data_out(wire_d0_22),.clk(clk),.rst(rst));
	shift_reg_top #(.WIDTH(WIDTH)) shift_reg_top_instance1023(.data_in(wire_d0_20),.data_out(wire_d0_23),.clk(clk),.rst(rst));
	// memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance1024(.data_in(wire_d0_23),.data_out(wire_d0_24),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance1025(.data_in(wire_d0_23),.data_out(wire_d0_25),.clk(clk),.rst(rst));
	// paritygenerator_top #(.WIDTH(WIDTH)) paritygenerator_top_instance1026(.data_in(wire_d0_25),.data_out(wire_d0_26),.clk(clk),.rst(rst));
	// large_mux #(.WIDTH(WIDTH)) large_mux_instance1027(.data_in(wire_d0_26),.data_out(wire_d0_27),.clk(clk),.rst(rst));
	// memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance1028(.data_in(wire_d0_26),.data_out(wire_d0_28),.clk(clk),.rst(rst));
	shift_reg_top #(.WIDTH(WIDTH)) shift_reg_top_instance1029(.data_in(wire_d0_25),.data_out(d_out0),.clk(clk),.rst(rst));


endmodule