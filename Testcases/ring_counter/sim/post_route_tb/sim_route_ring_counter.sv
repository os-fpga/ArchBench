`define REGISTER_WIDTH 100

module sim_route_ring_counter;
  bit clk;
  bit reset;
  bit lr;
	bit loopback_en;
	bit [`REGISTER_WIDTH - 1:0] counter_in;
	wire loopback_error,loopback_error_netlist;
  wire [`REGISTER_WIDTH - 1:0] out,out_netlist;

  integer mismatch=0;
  integer i=0;
  
  ring_counter golden (.clock0(clk),.reset(reset),.lr(lr),.loopback_en(loopback_en),.counter_in(counter_in),.loopback_error(loopback_error),.out(out));
  ring_counter_post_route netlist(.clock0(clk),.reset(reset),.lr(lr),.loopback_en(loopback_en),.counter_in(counter_in),.loopback_error(loopback_error_netlist),.out(out_netlist));

  always #2 clk = !clk;
  assign counter_in = out;
  
  initial begin

    reset = 0;
    lr = 0;

    #50;
    @(negedge clk);
    $display("Counter reset asserted for 1 clock cycle!");
    reset = 1;
    @(negedge clk);
    compare();
    @(negedge clk);
    reset = 0;
    @(negedge clk);
    compare();
    @(negedge clk);

    // Testing counter and loopback
    loopback_en = 1;
    
    // Right Shift Testing
    $display("Testing Right Shift Operation!");
    lr = 0;
    for (int test_cycles = 0; test_cycles < `REGISTER_WIDTH + 2; test_cycles+=1)begin
        @(posedge clk);
        #1 compare();   
        if(loopback_error == 1)begin
          mismatch+=1;
          $display("Data Mismatch. Error: [Loopback] Output %b | Input %b",out,counter_in);
        end
        if(loopback_error_netlist == 1)begin
          mismatch+=1;
          $display("Data Mismatch. Error: [Loopback] Output %b | Input %b",out,counter_in);
        end
    end

    // Left Shift Testing
    $display("Testing Left Shift Operation!");
    lr = 1;
    for (int test_cycles = 0; test_cycles < `REGISTER_WIDTH + 2; test_cycles+=1)begin
        @(posedge clk);
        #1 compare();
        if(loopback_error == 1)begin
          mismatch+=1;
          $display("Data Mismatch. Error: [Loopback] Output %b | Input %b",out,counter_in);
        end
        if(loopback_error_netlist == 1)begin
          mismatch+=1;
          $display("Data Mismatch. Error: [Loopback] Output %b | Input %b",out,counter_in);
        end
    end
	  
  	if(mismatch == 0)
      $display("\n**** All Comparison Matched ***\nSimulation Passed\n");
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
  
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, sim_route_ring_counter);
end

endmodule
