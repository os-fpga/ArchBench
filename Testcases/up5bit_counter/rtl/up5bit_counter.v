module up5bit_counter (out,
                        clk,
                        reset);

    output [4:0] out;
    input clk, reset;

    reg [4:0] out;

    always @(posedge clk)
        if (reset) begin 
            out <= 5'b0;
        end 
        else begin
            out <= out + 1;
        end 
endmodule
