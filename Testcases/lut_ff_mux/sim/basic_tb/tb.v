`include "../../rtl/lut_ff_mux.v"
module lut_ff_mux_tb;

  // Parameters

  //Ports
  reg [3:0] in;
  reg  clock0;
  reg   rst;
  reg  mux_sel;
  wire  Q;

  lut_ff_mux  lut_ff_mux_inst (
    .in(in),
    .clk(clock0),
    .rst(rst),
    .mux_sel(mux_sel),
    .Q(Q)
  );

    always #5  clock0 = ! clock0;

    initial begin
        clock0 <= 0;
        rst <= 1;
        in <= 4'b0;
        mux_sel <= 1;

	    repeat(10)@(negedge clock0);
        rst <= 0;

	    repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

	    repeat(10)@(negedge clock0);
	    one();

        in <= 4'b0001;
        mux_sel <= 1;

	    repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0010;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0011;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
	    one();

        in <= 4'b0100;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0101;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0110;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0111;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
	    one();

        in <= 4'b1000;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
	    one();

        in <= 4'b1001;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b1010;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b1011;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
	    one();

        in <= 4'b1100;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
	    one();

        in <= 4'b1101;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b1110;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b1111;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
	    one();

        rst <= 1;

        in <= 4'b0011;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
	    zero();

        in <= 4'b0100;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0101;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0110;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0111;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b1000;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b1001;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b1010;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        rst <= 0;

        in <= 4'b0010;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0011;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
	    one();

        in <= 4'b0100;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0101;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0110;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
	    one();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
        zero();

        in <= 4'b0111;
        mux_sel <= 1;

        repeat(10)@(negedge clock0);
        zero();

        mux_sel <= 0;

        repeat(10)@(negedge clock0);
	    one();

        #10;
        $finish;
    
    end

    task one();
        if(Q === 1) begin
           $display("Status: Test Passed"); 
        end
        else begin
            $display("Status: Test Failed"); 
        end
    endtask

    task zero();
        if(Q === 0) begin
           $display("Status: Test Passed");
        end
        else begin
            $display("Status: Test Failed");
        end
    endtask

    initial begin
        $dumpfile("tb.vcd");
        $dumpvars(0,lut_ff_mux_tb);
    end
endmodule 
