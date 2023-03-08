module mux_32_1(out, D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15,
    D16, D17, D18, D19, D20, D21, D22, D23, 
    D24, D25, D26, D27, D28, D29, D30, D31, 
    S0, S1, S2, S3, S4);

    input wire D0, D1, D2, D3, D4, D5, D6, D7; 
    input wire D8, D9, D10, D11, D12, D13, D14, D15;
    input wire D16, D17, D18, D19, D20, D21, D22, D23;
    input wire D24, D25, D26, D27, D28, D29, D30, D31;
    input S0, S1, S2, S3, S4;
    output reg out;

    always@(*) begin
        case({S4,S3,S2,S1,S0})
            5'b00000: out=D0;
            5'b00001: out=D1;
            5'b00010: out=D2;
            5'b00011: out=D3;
            5'b00100: out=D4;
            5'b00101: out=D5;
            5'b00110: out=D6;
            5'b00111: out=D7;
            5'b01000: out=D8;
            5'b01001: out=D9;
            5'b01010: out=D10;
            5'b01011: out=D11;
            5'b01100: out=D12;
            5'b01101: out=D13;
            5'b01110: out=D14;
            5'b01111: out=D15;
            5'b10000: out=D16;
            5'b10001: out=D17;
            5'b10010: out=D18;
            5'b10011: out=D19;
            5'b10100: out=D20;
            5'b10101: out=D21;
            5'b10110: out=D22;
            5'b10111: out=D23;
            5'b11000: out=D24;
            5'b11001: out=D25;
            5'b11010: out=D26;
            5'b11011: out=D27;
            5'b11100: out=D28;
            5'b11101: out=D29;
            5'b11110: out=D30;
            5'b11111: out=D31;
            default: out=1'b0;
        endcase
    end

endmodule