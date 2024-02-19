`default_nettype none

module lut_ff_mux_top_formal_verification_random_tb;
// ----- Default clock port is added here since benchmark does not contain one -------
	reg clock0;

// ----- Shared inputs -------
	reg [3:0] in;
	reg rst;
	reg mux_sel;

// ----- FPGA fabric outputs -------
	wire Q;

// ----- Local wires for FPGA fabric -----
	wire [0:15] clk;
	wire [0:2303] gfpga_pad_QL_PREIO_A2F;
	wire [0:2303] gfpga_pad_QL_PREIO_F2A;
	wire [0:2303] gfpga_pad_QL_PREIO_F2A_CLK;
	wire [0:513] bl_config_region_0;
	wire [0:406] wl_config_region_0;
	bit global_resetn;
	wire scan_en;
	wire scan_mode;
	
// ----- FPGA top-level module to be capsulated -----
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

// ----- Begin Connect Global ports of FPGA top module -----
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
	assign clk[15] = 1'b0;
// ----- End FPGA Fabric Instanication -------

// ----- Clock 'clk' Initialization -------
	initial begin
		clock0 <= 1'b0;
		while(1) begin
			#1
			clock0 <= !clock0;
		end
	end
	`include "../lut_ff_mux/PinMapping.v"

// ----- Begin reset signal generation -----
// ----- End reset signal generation -----

// ----- Input Initialization -------
	initial begin
		`include "../../bitstream_text.txt"
		in <= 4'b0;
		rst <= 1'b1;
		mux_sel <= 1'b1;

		repeat(10)@(negedge clock0);
		global_resetn<=1'b1;

	    repeat(10)@(negedge clock0);
        rst <= 0;

	    repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

	    repeat(10)@(negedge clock0);
	    one();

        in <= 4'b0001;
        mux_sel <= 1;

	    repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0010;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0011;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
	    one();

        in <= 4'b0100;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0101;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0110;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0111;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
	    one();

        in <= 4'b1000;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
	    one();

        in <= 4'b1001;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b1010;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b1011;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
	    one();

        in <= 4'b1100;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
	    one();

        in <= 4'b1101;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b1110;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b1111;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
	    one();

        rst <= 1;

        in <= 4'b0011;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
	    zero();

        in <= 4'b0100;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0101;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0110;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0111;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b1000;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b1001;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b1010;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        rst <= 0;

        in <= 4'b0010;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0011;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
	    one();

        in <= 4'b0100;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0101;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0110;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0111;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
	    one();

        #10;
        $finish;
    
    end

    task one();
        if(Q === 1) begin
           $display("Status: Test Passed"); 
        end
        else begin
            $display("Status: Test Failed"); 
        end
    endtask

    task zero();
        if(Q === 0) begin
           $display("Status: Test Passed");
        end
        else begin
            $display("Status: Test Failed");
        end
    endtask

// ----- Begin output waveform to VCD file-------
	initial begin
		$dumpfile("lut_ff_mux_formal.vcd");
		$dumpvars(1, lut_ff_mux_top_formal_verification_random_tb);
	end
// ----- END output waveform to VCD file -------

// initial begin
// 	$timeformat(-9, 2, "ns", 20);
// 	$display("Simulation start");
// // ----- Can be changed by the user for his/her need -------
// 	#20
// 	$display("Simulation Succeed");
// 	$finish;
// end

endmodule
// ----- END Verilog module for lut_ff_mux_top_formal_verification_random_tb -----

