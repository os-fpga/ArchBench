module lut_ff_mux(clk,in,rst,Q,mux_sel);
    input [3:0] in;
    input clk, rst;
    input mux_sel;
    output Q;

    reg lut_out;
    wire out; 
    
    assign out = mux_sel ? lut_out : !lut_out;

    flip_flop ff_inst (.clk(clk),.rst(rst),.D(out),.Q(Q));
    
    always @(*) begin
        case(in)
            4'b0000 : lut_out = 0;
            4'b0001 : lut_out = 1;
            4'b0010 : lut_out = 1;
            4'b0011 : lut_out = 0;
            4'b0100 : lut_out = 1;
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
            default: lut_out = 1;
        endcase
    end
endmodule

module flip_flop(
    input rst,clk,
    input D,
    output reg Q
);
    always @ (posedge clk) begin
        if (rst)
            Q <= 0;
        else
            Q <= D;
    end
endmodule