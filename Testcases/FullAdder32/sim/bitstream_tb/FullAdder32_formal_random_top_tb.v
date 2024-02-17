`default_nettype none

module FullAdder32_top_formal_verification_random_tb;
// ----- Default clock port is added here since benchmark does not contain one -------
	reg clock0;

// ----- Shared inputs -------
	reg [31:0] a;
	reg [31:0] b;
	reg cin;

// ----- FPGA fabric outputs -------
	wire [31:0] sum;
	wire cout;

// ----- FPGA fabric instanciation -------
	
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
	assign clk[0] = 1'b0;
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
// ----- End FPGA Fabric Instanication -------

// ----- Clock 'clk' Initialization -------
	initial begin
		clock0 <= 1'b0;
		while(1) begin
			#1
			clock0 <= !clock0;
		end
	end

	`include "../FullAdder32/pin_assignments.v"

	initial begin
	`include "../../bitstream_text.txt"
		// reset = 1'b1;
		global_resetn = 1'b0;
		repeat(2)@(posedge clock0);

        a = 32'hAAAA_AAAA; // Example input value
        b = 32'h5555_5555; // Example input value
        cin = 1'b0; // Example input value
        #10;
        if (a + b + cin == sum) begin
            $display("TEST PASSED: a = %h, b = %h, cin = %b, sum = %h, cout = %b", a, b, cin, sum, cout);
        end else begin
            $display("TEST FAILED: a = %h, b = %h, cin = %b, sum = %h, cout = %b", a, b, cin, sum, cout);
        end
		
		a = 32'h0;
        b = 32'h0;
        cin = 1'b0;
        #10;
        if (a + b + cin == sum) begin
            $display("TEST PASSED: a = %h, b = %h, cin = %b, sum = %h, cout = %b", a, b, cin, sum, cout);
        end else begin
            $display("TEST FAILED: a = %h, b = %h, cin = %b, sum = %h, cout = %b", a, b, cin, sum, cout);
        end

        a = 32'h0;
        b = 32'h0;
        cin = 1'b1;
        #10;
        if (a + b + cin == sum) begin
            $display("TEST PASSED: a = %h, b = %h, cin = %b, sum = %h, cout = %b", a, b, cin, sum, cout);
        end else begin
            $display("TEST FAILED: a = %h, b = %h, cin = %b, sum = %h, cout = %b", a, b, cin, sum, cout);
        end

        // Apply stimulus
        repeat(50) begin
            #1 a = $random;
            #1 b = $random;
            #1 cin = $random;
            #10;
            // Self-checking
            if (a + b + cin == sum) begin
                $display("TEST PASSED: a = %h, b = %h, cin = %b, sum = %h, cout = %b", a, b, cin, sum, cout);
            end else begin
                $display("TEST FAILED: a = %h, b = %h, cin = %b, sum = %h, cout = %b", a, b, cin, sum, cout);
            end
        end

        // Stop simulation
        $finish;
    end
	
	initial begin
		$dumpfile("FullAdder32.vcd");
		$dumpvars(0, FullAdder32_top_formal_verification_random_tb);
	end


endmodule
// ----- END Verilog module for FullAdder32_top_formal_verification_random_tb -----

