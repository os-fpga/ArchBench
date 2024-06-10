module sim_route_sequence_detector_moore;
  bit clk; 
  bit rst;
  bit in;
  wire detect,detect_netlist;

	int count=0;
	reg check;
	reg [5:0] value=0;
	bit q;

  integer mismatch=0;
  
  sequence_detector_moore golden (.clock0(clk),.rst(rst),.in(in),.detect(detect));
  sequence_detector_moore_post_route netlist(.clock0(clk),.rst(rst),.in(in),.detect(detect_netlist));

  always #2 clk = !clk;
  
  initial begin

    clk = 0;
    rst = 0;
    in = 0;

    #10;    
    $display("Reset Asserted!");
    rst = 1;
    repeat(5) @(posedge clk);
    compare();
    $display("Reset Desserted!");
    rst=0;
  
    for (int i = 0; i < 1000; i+=1)begin
      q = $urandom_range(0,1);
      value[0] = q;
      in = q;
      @(posedge clk);
      #1 compare();
      if(detect === 1)count+=1;
      value <<= 1;
    end
    $display("Pattern detected %d times",count);
	  
  	if(mismatch == 0)
      $display("\n**** All Comparison Matched ***\nSimulation Passed\n");
    else
      $display("%0d comparison(s) mismatched\nError: Simulation Failed", mismatch);
    $finish;
  end

  task compare();
  $display("*** Comparing ***");
   if(detect !== detect_netlist) begin
     $display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", detect, detect_netlist, $time);
     mismatch = mismatch+1;
  end
   else
       $display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", detect, detect_netlist, $time);
  endtask
  
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, sim_route_sequence_detector_moore);
end

endmodule
