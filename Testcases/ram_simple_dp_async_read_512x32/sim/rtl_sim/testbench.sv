`timescale 1ns/1ps

`include "../../rtl/ram_simple_dp_async_read_512x32.v"
`default_nettype none

module testbench;
// ----- Default clock port is added here since benchmark does not contain one -------
	reg [0:0] clk;

	reg [31:0] c_pred=0;
	reg [31:0] a;
	reg [31:0] b;
	reg [0:0] out_en;
	reg [8:0] read_addr;
	reg [0:0] reset;
	reg [0:0] we;
	reg [8:0] write_addr;
	wire [31:0] dout;

// ----- FPGA fabric instanciation -------
	ram_simple_dp_async_read_512x32 FPGA_DUT(.clk(clk),.a(a),.b(b),.out_en(out_en),.read_addr(read_addr),.reset(reset),.we(we),.write_addr(write_addr),.dout(dout)
	);

	initial begin
		clk[0] <= 1'b0;
		while(1) begin
			#1
			clk[0] <= !clk[0];
		end
	end

	initial begin
		$dumpfile("wave.vcd");
		$dumpvars(1, testbench);
	end
// ----- END output waveform to VCD file -------



initial begin
	$timeformat(-9, 2, "ns", 20);
	$display("Simulation start");
// ----- Can be changed by the user for his/her need -------

    we=0; 
    reset=1;
    out_en=0;
    read_addr=0;
    write_addr=0;
    a=0;
    b=0;

    repeat(5) @(negedge clk);
    reset=0;
    repeat(5) @(negedge clk);
    reset=1;
    repeat(10) @(negedge clk);
    a=32'h00000000;
    b=32'h11111111;
    c_pred=a+b;
    // c_pred = data;
    we=1;
    out_en=1;
    repeat(5) @(negedge clk);
    if (dout !== c_pred) begin
        $display("Status: Test Failed: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, read_addr, c_pred, dout); 
    end
    else begin
        $display("Status: Test Passed: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, read_addr, c_pred, dout); 
    end 
    repeat(10) @(negedge clk);

    for (int i = 0; i<512; i++) begin
        a = $urandom_range(0, 511);
        b = $urandom_range(0, 511);
        write_addr = i;
        @(negedge clk);
        read_addr = i;
        c_pred=a+b;
        repeat(2)@(negedge clk);
        compare(dout, c_pred,read_addr);
    end

	#20
	$finish;
end

function void compare(reg[31:0] exp_addr, reg [31:0] cap_data,reg [8:0] read_addr);
if (cap_data !== exp_addr) begin
    $display("Status: Test Failed:: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, read_addr,exp_addr, cap_data); 
    // error++;
end
else begin
    $display("Status: Test Passed:: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, read_addr,exp_addr, cap_data); 
    // pass++;
end 
endfunction

endmodule

 
