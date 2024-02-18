`include "../rtl/dffre_inst.v"

module dffre_inst_tb;

  reg  clock0;
  reg  i_Reset;
  reg  i_Enable;
  reg  i_D;
  wire  o_Q;

  dffre_inst  dffre_inst_inst (
    .clk(clock0),
    .i_Reset(i_Reset),
    .i_Enable(i_Enable),
    .i_D(i_D),
    .o_Q(o_Q)
  );

always #5  clock0 = ! clock0 ;


initial begin
    clock0 <= 0;
    i_Reset <= 1'b0;
    i_Enable <= 1'b0;
    i_D <= 1'b0;

    #20 i_Reset = 1;

    #20 i_Enable = 1;

    #10 i_D = 1;
    #10 i_D = 0;
    #10 i_D = 1;
    #10 i_D = 0;

    repeat(500) begin
        #10 i_D = $random;
    end

    #10 i_Reset <= 0;

    repeat(500) begin
        #10 i_D = $random;
    end

    #10 i_Reset <= 1;

    repeat(500) begin
        #10 i_D = $random;
    end

    #10 i_Enable = 0;

    #10 i_D = 1;
    #10 i_D = 0;

    #10 i_Enable = 1;

    #10 i_D = 1;
    #10 i_D = 0;

    #10 $finish;
end

    initial begin
        #30;
        if (i_Reset == 0 || o_Q === 0) begin
            $display("Status: Test Passed: i_Reset = %b, o_Q = %b", i_Reset, o_Q);
        end
        else
            $display("Status: Test Failed: i_Reset = %b, o_Q = %b", i_Reset, o_Q);
    end

    always @(negedge clock0) begin
        #20;
        if (i_Reset == 0) begin
            if (o_Q === 0) begin
                $display("Status: Test Passed: i_Reset = %b, o_Q = %b", i_Reset, o_Q);
            end
            else begin
                $display("Status: Test Failed: i_Reset = %b, o_Q = %b", i_Reset, o_Q);
            end
        end
    end

    always @(negedge clock0) begin
        #20;
        if (i_Enable && i_Reset) begin
            if (o_Q === i_D) begin
                $display("Status: Test Passed: Output o_Q: %b, input i_D: %b", o_Q, i_D);
            end
            else begin
                $display("Status: Test Failed: Output o_Q: %b, input i_D: %b", o_Q, i_D);
            end
        end
    end

initial begin
    $dumpfile("dffre_inst_formal.vcd");
    $dumpvars(1, dffre_inst_tb);
end

endmodule 
