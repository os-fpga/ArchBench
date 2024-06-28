module sim_route_fifo_bram_sync;
	
	parameter DATA_WIDTH    =  36;

    bit clk; 
	bit reset;
    bit read; 
	bit write;
    bit [DATA_WIDTH-1:0] write_data;
    wire empty,empty_netlist; 
	wire full,full_netlist;
    wire [DATA_WIDTH-1:0] read_data,read_data_netlist;

	integer mismatch=0;

	fifo_bram_sync golden(.clock0(clk),.reset(reset),.read(read),.write(write),.write_data(write_data),.empty(empty),.full(full),.read_data(read_data));
	fifo_bram_sync_post_route netlist(.clock0(clk),.reset(reset),.read(read),.write(write),.write_data(write_data),.empty(empty_netlist),.full(full_netlist),.read_data(read_data_netlist));

	always #1 clk = ~clk;

	initial begin
		reset = 1;
	  	read = 'h0;
	  	write = 'h0;
	  	write_data = 'h0;
	  	@ (negedge clk);
	  	reset = 0;
	  	@ (negedge clk);
		
		while (!full) begin
			@ (negedge clk);
			write = 1;
			write_data = {$urandom_range(32'hFFFF_FFFF, 32'h1), 4'hF};
			@ (negedge clk);
			write = 0;
			$display ("PUSH DATA:%0h FULL:%0b EMPTY:%0b", write_data, full, empty);
		end
		while (!empty) begin
			@ (negedge clk);
			read = 1;
			@ (negedge clk);
			read = 0;
			compare();
		end
	repeat(10)@(negedge clk);

	if(mismatch == 0)
        $display("\n**** All Comparison Matched ***\nSimulation Passed");
    else
        $display("%0d comparison(s) mismatched\nError: Simulation Failed", mismatch);
	$finish;
end
	

task compare();
 	$display("*** Comparing ***");
  	if(read_data !== read_data_netlist) begin
    	$display("Data Mismatch. Golden Data: %0d, Netlist Data: %0d, Time: %0t", read_data,read_data_netlist, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden Data: %0d, Netlist Data: %0d, Time: %0t", read_data,read_data_netlist, $time);
endtask

initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0,sim_route_fifo_bram_sync);
end
endmodule