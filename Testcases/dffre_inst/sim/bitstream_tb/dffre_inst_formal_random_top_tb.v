`default_nettype none

module dffre_inst_top_formal_verification_random_tb;

	reg clock0;

	reg i_Reset;
	reg i_Enable;
	reg i_D;

	wire o_Q;

	wire [0:15] clk;
	wire [0:2303] gfpga_pad_QL_PREIO_A2F;
	wire [0:2303] gfpga_pad_QL_PREIO_F2A;
	wire [0:2303] gfpga_pad_QL_PREIO_F2A_CLK;
	wire [0:513] bl_config_region_0;
	wire [0:406] wl_config_region_0;
	bit global_resetn;
	wire scan_en;
	wire scan_mode;
	
	fpga_top U0_formal_verification (
		clk[0:15],
		global_resetn,
		scan_en,
		scan_mode,
		gfpga_pad_QL_PREIO_A2F[0:2303],
		gfpga_pad_QL_PREIO_F2A[0:2303],
		gfpga_pad_QL_PREIO_F2A_CLK[0:2303],
		bl_config_region_0[0:513],
		wl_config_region_0[0:406]);

		// assign global_resetn = 1'b0;
		assign scan_en = 1'b0;
		assign scan_mode = 1'b0;
		assign clk[0] = clock0;
		assign clk[1] = 1'b0;
		assign clk[2] = 1'b0;
		assign clk[3] = 1'b0;
		assign clk[4] = 1'b0;
		assign clk[5] = 1'b0;
		assign clk[6] = 1'b0;
		assign clk[7] = 1'b0;
		assign clk[8] = 1'b0;
		assign clk[9] = 1'b0;
		assign clk[10] = 1'b0;
		assign clk[11] = 1'b0;
		assign clk[12] = 1'b0;
		assign clk[13] = 1'b0;
		assign clk[14] = 1'b0;
		assign clk[15] = clock0;

	initial begin
		clock0 <= 1'b0;
		while(1) begin
			#1
			clock0 <= !clock0;
		end
	end

	`include "../dffre_inst/pin_assignments.v"

	initial begin
		`include "../../bitstream_text.txt"
		i_Reset <= 1'b0;
		i_Enable <= 1'b0;
		i_D <= 1'b0;
	
		#20 i_Reset = 1;
	
		#20 i_Enable = 1;
	
		#10 i_D = 1;
		#10 i_D = 0;
		#10 i_D = 1;
		#10 i_D = 0;
	
		repeat(500) begin
			#10 i_D = $random;
		end
	
		#10 i_Reset <= 0;
	
		repeat(500) begin
			#10 i_D = $random;
		end
	
		#10 i_Reset <= 1;
	
		repeat(500) begin
			#10 i_D = $random;
		end
	
		#10 i_Enable = 0;
	
		#10 i_D = 1;
		#10 i_D = 0;
	
		#10 i_Enable = 1;
	
		#10 i_D = 1;
		#10 i_D = 0;
	
		#10 $finish;
	end
	
	initial begin
		#30;
		if (i_Reset == 0 || o_Q === 0) begin
			$display("Status: Test Passed: i_Reset = %b, o_Q = %b", i_Reset, o_Q);
		end
		else
			$display("Status: Test Failed: i_Reset = %b, o_Q = %b", i_Reset, o_Q);
	end

	always @(negedge clock0) begin
		#20;
		if (i_Reset == 0) begin
			if (o_Q === 0) begin
				$display("Status: Test Passed: i_Reset = %b, o_Q = %b", i_Reset, o_Q);
			end
			else begin
				$display("Status: Test Failed: i_Reset = %b, o_Q = %b", i_Reset, o_Q);
			end
		end
	end

	always @(negedge clock0) begin
		#20;
		if (i_Enable && i_Reset) begin
			if (o_Q === i_D) begin
				$display("Status: Test Passed: Output o_Q: %b, input i_D: %b", o_Q, i_D);
			end
			else begin
				$display("Status: Test Failed: Output o_Q: %b, input i_D: %b", o_Q, i_D);
			end
		end
	end

	initial begin
		$dumpfile("dffre_inst_formal.vcd");
		$dumpvars(1, dffre_inst_top_formal_verification_random_tb);
	end

endmodule

