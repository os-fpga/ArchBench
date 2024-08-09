`timescale 1ns/1ps

module sim_route_ram_simple_dp_async_read_512x32;
    reg clk, we, reset,out_en;
    reg [8:0] read_addr, write_addr;
    reg [31:0] a,b;
    wire [31:0] dout,dout_netlist;

	// bit [`ADDER_WIDTH - 1:0] op_a_data[0:15];
	// bit [`ADDER_WIDTH - 1:0] op_b_data[0:15];

	integer mismatch=0;

	ram_simple_dp_async_read_512x32 golden(.clk(clk),.we(we),.reset(reset),.out_en(out_en),.read_addr(read_addr),.write_addr(write_addr),.a(a),.b(b),.dout(dout));
	ram_simple_dp_async_read_512x32_post_route netlist(.clk(clk),.we(we),.reset(reset),.out_en(out_en),.read_addr(read_addr),.write_addr(write_addr),.a(a),.b(b),.dout(dout_netlist));

	always #2 clk = ~clk;

	initial begin

		{clk,we,out_en,read_addr,write_addr,a,b} = 0;
		reset  = 1;
        
		repeat(10) @(negedge clk);
		reset  = 0;
        we = 1;
        out_en = 1;
        // repeat(5) @(negedge clk);
		repeat(10) @(negedge clk);
		reset  = 1;
        a = 32'h00000000;
        b = 32'h11111111;
        repeat(2) @(negedge clk);
        we = 0;
        repeat(10) @(negedge clk);
        compare();

        for(int i = 0; i < 512; i += 1)begin
            write_addr = i;
            a = $urandom;
            b = $urandom;
            @(negedge clk);
            we = 1;
            @(negedge clk);
            we = 0;
            read_addr = i;
            repeat(10)@(negedge clk);
            compare();
        end
        we = 0;
		repeat(10) @(negedge clk);
        for(int i = 0; i < 512; i += 1)begin
            read_addr = $urandom;
            @(negedge clk);
            @(negedge clk);
            compare();
        end
        // we = 1;
        reset = 0;
		repeat(10) @(negedge clk);
        for(int i = 0; i < 512; i += 1)begin
            read_addr = $urandom;
            @(negedge clk);
            @(negedge clk);
            compare();
        end
        out_en = 0;
        reset = 1;
		repeat(10) @(negedge clk);
        for(int i = 0; i < 512; i += 1)begin
            read_addr = $urandom;
            @(negedge clk);
            @(negedge clk);
            compare();
        end

		repeat(100)@(negedge clk);

		if(mismatch == 0)
			$display("\n**** All Comparison Matched ***\nSimulation Passed");
		else
			$display("%0d comparison(s) mismatched\nError: Simulation Failed", mismatch);
		$finish;
	end
		

	task compare();
		$display("*** Comparing ***");
		if(dout !== dout_netlist) begin
			$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", dout, dout_netlist, $time);
			mismatch = mismatch+1;
		end
		else
			$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", dout, dout_netlist, $time);
	endtask

	task display_stimulus();
		$display ($time,," Test stimulus is: dout=%0d dout_netlist=%0d", dout, dout_netlist);
	endtask

	initial begin
		$dumpfile("tb.vcd");
		$dumpvars(0,sim_route_ram_simple_dp_async_read_512x32);
	end
endmodule