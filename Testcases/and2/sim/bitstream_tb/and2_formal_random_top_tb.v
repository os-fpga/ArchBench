//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: FPGA Verilog Testbench for Formal Top-level netlist of Design: and2
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Wed Jan 25 17:37:32 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype none

module and2_top_formal_verification_random_tb;
// ----- Default clock port is added here since benchmark does not contain one -------
	reg [0:0] clk;

// ----- Shared inputs -------
	reg [0:0] a;
	reg [0:0] b;

// ----- FPGA fabric outputs -------
	wire [0:0] c_gfpga;

// ----- FPGA fabric instanciation -------
	and2_top_formal_verification FPGA_DUT(
		.a(a),
		.b(b),
		.c(c_gfpga)
	);
// ----- End FPGA Fabric Instanication -------

// ----- Clock 'clk' Initialization -------
	initial begin
		clk[0] <= 1'b0;
		while(1) begin
			#1
			clk[0] <= !clk[0];
		end
	end

// ----- Begin reset signal generation -----
// ----- End reset signal generation -----

// ----- Input Initialization -------
	initial begin
		a <= 1'b0;
		b <= 1'b0;
	end

// ----- Input Stimulus -------
	always@(negedge clk[0]) begin
		// a <= $random;
		// b <= $random;
		repeat(10)@(posedge clk);
        a = 1'b0;
        b = 1'b0;
        @(posedge clk);
        if (c_gfpga === 0)
          $display("Status: Test Passed");
        else  
          $display("Status: Test Failed");
          
        a = 1'b0; 
        b = 1'b1;
        @(posedge clk);
        if (c_gfpga === 0)
          $display("Status: Test Passed");
        else  
          $display("Status: Test Failed");

        a = 1'b1;
        b = 1'b0;
        @(posedge clk);
        if (c_gfpga === 0)
          $display("Status: Test Passed");
        else  
          $display("Status: Test Failed");

        a = 1'b1;
        b = 1'b1;
        @(posedge clk);
        if (c_gfpga === 1)
          $display("Status: Test Passed");
        else  
          $display("Status: Test Failed");

        a = 1'b0;
        b = 1'b1;
        @(posedge clk);
        if (c_gfpga === 0)
          $display("Status: Test Passed");
        else  
          $display("Status: Test Failed");

        a = 1'b1;
        b = 1'b0;
        @(posedge clk);
        if (c_gfpga === 0)
          $display("Status: Test Passed");
        else  
          $display("Status: Test Failed");

          a = 1'b1;
          b = 1'b1;
          @(posedge clk);
          if (c_gfpga === 1)
            $display("Status: Test Passed");
          else  
            $display("Status: Test Failed");
        repeat(10)@(posedge clk);
        $finish;
	end

// ----- Begin output waveform to VCD file-------
	initial begin
		$dumpfile("and2_formal.vcd");
		$dumpvars(1, and2_top_formal_verification_random_tb);
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
// ----- END Verilog module for and2_top_formal_verification_random_tb -----

//----- Default net type -----
`default_nettype none

