module lut_ff_mux(clk,in,rst,Q,mux_sel);
    input [3:0] in;
    input clk, rst;
    input mux_sel;
    output reg Q;

    reg lut_out;
    reg out;

    always @(mux_sel) begin
        case(mux_sel)
            0 : out = lut_out;
            1 : out = Q;
            default: out = 0;
        endcase
    end 

    always @ (posedge clk) begin
        if (rst)
            Q <= 0;
        else
            Q <= lut_out;
    end
    
    always @(in) begin
        case(in)
            4'b0000 : lut_out = 0;
            4'b0001 : lut_out = 1;
            4'b0010 : lut_out = 1;
            4'b0011 : lut_out = 0;
            4'b0100 : lut_out = 0;
            4'b0101 : lut_out = 1;
            4'b0110 : lut_out = 1;
            4'b0111 : lut_out = 0;
            4'b1000 : lut_out = 0;
            4'b1001 : lut_out = 1;
            4'b1010 : lut_out = 1;
            4'b1011 : lut_out = 0;
            4'b1100 : lut_out = 0;
            4'b1101 : lut_out = 1;
            4'b1110 : lut_out = 1;
            4'b1111 : lut_out = 0;
            default: lut_out = 0;
        endcase
    end
endmodule