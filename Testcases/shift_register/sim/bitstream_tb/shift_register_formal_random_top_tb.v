`default_nettype none

module shift_register_top_formal_verification_random_tb;

	reg clock0;

	reg reset;
	reg [1:0] ctrl;
	reg [7:0] data;

	wire [7:0] q_reg;

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
	assign clk[1] = clock0;
	assign clk[2] = clock0;
	assign clk[3] = clock0;
	assign clk[4] = clock0;
	assign clk[5] = clock0;
	assign clk[6] = clock0;
	assign clk[7] = clock0;
	assign clk[8] = clock0;
	assign clk[9] = clock0;
	assign clk[10] = clock0;
	assign clk[11] = clock0;
	assign clk[12] = clock0;
	assign clk[13] = clock0;
	assign clk[14] = clock0;
	assign clk[15] = clock0;

	initial begin
		clock0 <= 1'b0;
		while(1) begin
			#1
			clock0 <= !clock0;
		end
	end

	`include "../shift_register/pin_assignments.v"


	initial begin
		`include "../../bitstream_text.txt"
        clock0 = 0;
        reset = 0;
        ctrl = 0;
        data = 8'b0;
		repeat(10)@(posedge clock0);
		global_resetn = 1'b1;

        repeat(10)@(negedge clock0);
        reset<=1;

        repeat(10)@(negedge clock0);
        reset<=0;

        repeat(10)@(negedge clock0);

        // Apply different control signals and check the output behavior
        ctrl = 1; 
        data = 8'b10101010; // Right shift
        @(negedge clock0);
        stimulus(q_reg,8'b10000000);
        data = 8'b00001010; // Right shift
        @(negedge clock0);
        stimulus(q_reg,8'b01000000);
        data = 8'b01101010; // Right shift
        @(negedge clock0);
        stimulus(q_reg,8'b00100000);
        data = 8'b11101010; // Right shift
        @(negedge clock0);
        stimulus(q_reg,8'b10010000);
        data = 8'b01111110; // Right shift
        @(negedge clock0);
        stimulus(q_reg,8'b01001000);
        data = 8'b11111110; // Right shift
        @(negedge clock0);
        stimulus(q_reg,8'b10100100);
        data = 8'b11111110; // Right shift
        @(negedge clock0);
        stimulus(q_reg,8'b11010010);
        data = 8'b11111011; // Right shift
        @(negedge clock0);
        stimulus(q_reg,8'b11101001);
        data = 8'b11111011; // Right shift
        @(negedge clock0);
        stimulus(q_reg,8'b11110100);
        data = 8'b11111111; // Right shift
        @(negedge clock0);
        stimulus(q_reg,8'b11111010);
        data = 8'b11011111; // Right shift
        @(negedge clock0);
        stimulus(q_reg,8'b11111101);
        data = 8'b10011111; // Right shift
        @(negedge clock0);
        stimulus(q_reg,8'b11111110);
        data = 8'b10011011; // Right shift
        @(negedge clock0);
        stimulus(q_reg,8'b11111111);
        data = 8'b00000000; // Right shift
        @(negedge clock0);
        stimulus(q_reg,8'b01111111);
        data = 8'b10011010; // Right shift
        @(negedge clock0);
        stimulus(q_reg,8'b10111111);

        ctrl = 0; // No operation
        @(negedge clock0);
        stimulus(q_reg,8'b10111111);
        repeat(10)@(negedge clock0);
        // ctrl = 0; // No operation
        @(negedge clock0);
        stimulus(q_reg,8'b10111111);

    
        ctrl = 2; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b01111111);
        repeat(10)@(negedge clock0);
        data = 8'b00101010; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b11111110);
        data = 8'b00001010; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b11111100);
        data = 8'b00001010; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b11111000);
        data = 8'b10001010; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b11110001);
        data = 8'b00001110; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b11100010);
        data = 8'b10111111; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b11000101);
        data = 8'b00111011; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b10001010);
        data = 8'b10111011; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b00010101);
        data = 8'b10111011; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b00101011);
        data = 8'b10101011; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b01010111);
        data = 8'b10101010; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b10101111);
        data = 8'b10101010; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b01011111);
        data = 8'b11101010; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b10111111);
        data = 8'b11101010; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b01111111);
        data = 8'b11001010; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b11111111);
        data = 8'b01001010; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b11111110);
        data = 8'b01001010; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b11111100);
        data = 8'b10010101; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b11111001);


        ctrl = 3; 
        data = 8'b11110000; // Load data
        @(negedge clock0);
        stimulus(q_reg,8'b11110000);
        repeat(10)@(negedge clock0);
        repeat(10)@(negedge clock0) begin
        data = $random(); // Load data
        @(negedge clock0);
        stimulus(q_reg,data);
        end

        reset = 1;
        ctrl = 1; 
        repeat(10)@(negedge clock0);
        repeat(20)@(negedge clock0) begin
        data = $random(); // Load data
        ctrl = $random();
        @(negedge clock0);
        stimulus(q_reg,8'b0);
        end

        reset = 0;
        ctrl = 2; 
        // repeat(10)@(negedge clock0);
        data = 8'b11010101; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b00000001);
        data = 8'b01010101; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b00000010);
        @(negedge clock0);
        stimulus(q_reg,8'b00000100);
        @(negedge clock0);
        stimulus(q_reg,8'b00001000);
        @(negedge clock0);
        stimulus(q_reg,8'b00010000);
        @(negedge clock0);
        stimulus(q_reg,8'b00100000);
        @(negedge clock0);
        stimulus(q_reg,8'b01000000);
        @(negedge clock0);
        stimulus(q_reg,8'b10000000);
        @(negedge clock0);
        stimulus(q_reg,8'b00000000);
        data = 8'b11010101; // Left shift
        @(negedge clock0);
        stimulus(q_reg,8'b00000001);
        @(negedge clock0);
        stimulus(q_reg,8'b00000011);
        @(negedge clock0);
        stimulus(q_reg,8'b00000111);
        @(negedge clock0);
        stimulus(q_reg,8'b00001111);
        @(negedge clock0);
        stimulus(q_reg,8'b00011111);
        @(negedge clock0);
        stimulus(q_reg,8'b00111111);
        @(negedge clock0);
        stimulus(q_reg,8'b01111111);
        @(negedge clock0);
        stimulus(q_reg,8'b11111111);

        repeat(10)@(negedge clock0);
        #10 $finish;

	end

    task stimulus;
        input [7:0] q_output;
        input [7:0] check;
        begin
            if (q_output === check) begin
                $display("Status: Test Passed: %0t q_output: %0b, expected_output: %0b", $time, q_output, check);
            end
            else begin
                $display("Status: Test Failed: %0t q_output: %0b, expected_output: %0b", $time, q_output, check);
            end
        end
    endtask

	initial begin
		$dumpfile("shift_register_formal.vcd");
		$dumpvars(0, shift_register_top_formal_verification_random_tb);
	end

endmodule

