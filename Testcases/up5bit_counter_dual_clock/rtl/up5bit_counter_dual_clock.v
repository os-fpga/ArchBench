module up5bit_counter_dual_clock (out0,out1,
                        clk0,clk1,
                        reset);

    output [4:0] out0,out1;
    input clk0, clk1, reset;

    reg [4:0] out0,out1;

    always @(posedge clk0)
        if (reset) begin 
            out0 <= 5'b0;
        end 
        else begin
            out0 <= out0 + 1;
        end 

    always @(posedge clk1)
        if (reset) begin 
            out1 <= 5'b0;
        end 
        else begin
            out1 <= out1 + 1;
        end 
endmodule
