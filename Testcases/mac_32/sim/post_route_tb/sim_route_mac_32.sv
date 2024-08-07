`define MAC_32 1

module sim_route_mac_32;
	bit clk;
	bit reset;
	bit [15:0] a;
	bit [15:0] b;
	// bit [0:$clog2(`MAC_32+1)-1] id;
	wire [31:0] out,out_netlist;

	// bit [`ADDER_WIDTH - 1:0] op_a_data[0:15];
	// bit [`ADDER_WIDTH - 1:0] op_b_data[0:15];

	integer mismatch=0;

	mac_32 golden(.a(a),.b(b),.reset(reset),.clock0(clk),.out(out));
	mac_32_post_route netlist(.a(a),.b(b),.reset(reset),.clock0(clk),.out(out_netlist));

	always #2 clk = ~clk;

	initial begin

		reset = 1;
		clk = 0;
		a  = 16'b0;
		b  = 16'b0;
		// id = 0;
		repeat(10) @(negedge clk);

		reset = 0;
		repeat(5) @(negedge clk);
		compare();
		// end

		// for (int j =0; j<`MAC_32; j+=1) begin
			// id = j;
			// out_pred = 0;
			for(int i=0; i<1000; i+=1) begin
				a = signed'($urandom_range(2**16 - 1,0));
				b = signed'($urandom_range(2**16 - 1,0));
				// out_pred = out_pred + (a*b);
			@(negedge clk);
			@(negedge clk);
			compare();
			// if(out !== out_pred) begin
			// 	`ifdef VCS `uvm_error(design_name,$sformatf("Instance[ID]=%0d, test_cycle=%0d, Expected Output=%0h, Fabric Output=%0h",id,i,out_pred,out))
			// 	`else 		 $display("%s Failed :: Instance[ID]=%0d, test_cycle=%0d, Expected Output=%0h, Fabric Output=%0h",design_name,id,i,out_pred,out); `endif
			// 	error = error + 1;
			// end
			// else
			// 	`ifdef VCS `uvm_info(design_name,$sformatf("Instance[ID]=%0d, test_cycle=%0d, Expected Output=%0h, Fabric Output=%0h",id,i,out_pred,out),UVM_HIGH)
			// 	`else 		 $display("%s Passed :: Instance[ID]=%0d, test_cycle=%0d, Expected Output=%0h, Fabric Output=%0h",design_name,id,i,out_pred,out); `endif
			end	
		// end

		repeat(10)@(negedge clk);

		if(mismatch == 0)
			$display("\n**** All Comparison Matched ***\nSimulation Passed");
		else
			$display("%0d comparison(s) mismatched\nError: Simulation Failed", mismatch);
		$finish;
	end

	task compare();
		$display("*** Comparing ***");
		if(out !== out_netlist) begin
			$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", out, out_netlist, $time);
			mismatch = mismatch+1;
		end
		else
			$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", out, out_netlist, $time);
	endtask

	task display_stimulus();
		$display ($time,," Test stimulus is: out=%0d out_netlist=%0d", out, out_netlist);
	endtask

	initial begin
		$dumpfile("tb.vcd");
		$dumpvars(0,sim_route_mac_32);
	end
endmodule