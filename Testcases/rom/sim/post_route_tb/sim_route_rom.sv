module rom_post_route_tb;
  bit clk;
  bit [6:0] address;
  wire [7:0] data,data_netlist;

  integer mismatch=0;
  integer i=0;
  
  rom golden (.clk(clk),.address(address),.data(data));
  rom_post_route netlist(.clk(clk),.address(address),.data(data_netlist));

  always #1 clk = !clk;
  
  initial begin
    for (i = 0; i <128; i = i+1 )begin
      @(negedge clk); 
      address = i;
      compare();
    end
	  
  	if(mismatch == 0)
      $display("\n**** All Comparison Matched ***\nSimulation Passed");
    else
      $display("%0d comparison(s) mismatched\nError: Simulation Failed", mismatch);
    $finish;
  end

  task compare();
  $display("*** Comparing ***");
   if(data !== data_netlist) begin
     $display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", data, data_netlist, $time);
     mismatch = mismatch+1;
  end
   else
       $display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", data, data_netlist, $time);
  endtask
  
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, rom_post_route_tb);
end

endmodule
