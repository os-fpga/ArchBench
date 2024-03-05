module sim_route_shift_register;

  // Parameters
  localparam  N = 8;

  // Ports
  bit clk;
  bit reset;
  bit [1:0] ctrl;
  bit [N-1:0] data;
  wire [N-1:0] q_reg,q_reg_netlist;

  integer mismatch=0;

  shift_register #(.N(N)) shift_register_dut (.clk (clk),.reset(reset),.ctrl(ctrl),.data(data),.q_reg(q_reg));
  fabric_shift_register_post_route netlist(
);

  always #5  clk = !clk;
     
  initial begin
      reset = 1;
      repeat(20)@(negedge clk);
      reset=0;
      @(negedge clk);
      compare();

      data=8'b01010101;
      ctrl=0;
      @(negedge clk);
      compare();

      ctrl=3;
      repeat(100) begin
          data=$random;
          @(negedge clk);
          @(negedge clk);
          compare();
      end

      data=8'b10101010;
      ctrl=1;
      @(negedge clk);
      compare();

      repeat(10)@(negedge clk);

      data=8'b00001111;
      ctrl=2;
      @(negedge clk);
      compare();

      repeat(10)@(negedge clk);

	if(mismatch == 0)
        $display("\n**** All Comparison Matched ***\nSimulation Passed");
    else
        $display("%0d comparison(s) mismatched\nError: Simulation Failed", mismatch);
	$finish;
end
	

task compare();
 	$display("*** Comparing ***");
  	if(q_reg !== q_reg_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", q_reg, q_reg_netlist, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", q_reg, q_reg_netlist, $time);
endtask

task display_stimulus();
	$display ($time,," Test stimulus is: q_reg=%0d q_reg_netlist=%0d", q_reg, q_reg_netlist);
endtask

initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0,sim_route_shift_register);
end
endmodule
