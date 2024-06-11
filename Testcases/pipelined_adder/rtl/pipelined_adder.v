//-------------------------------------------------------
//  Functionality: An n-bit pipelined adder_ 
//  Author:        Azfar
//-------------------------------------------------------
// `include "../clb_defines.v"
`define ADDER_WIDTH 26

module pipelined_adder(
    input  wire clock0,
    input  wire reset,
    input  wire [`ADDER_WIDTH - 1:0] op_a,
    input  wire [`ADDER_WIDTH - 1:0] op_b,
    output wire [`ADDER_WIDTH - 1:0] out
);  
 
    wire [`ADDER_WIDTH - 1:0] a0;
    wire [`ADDER_WIDTH - 1:0] b0;
    wire [`ADDER_WIDTH - 1:0] o0;
    adder_ add0 (a0,b0,o0);

    wire [`ADDER_WIDTH - 1:0] a1;
    wire [`ADDER_WIDTH - 1:0] b1;
    wire [`ADDER_WIDTH - 1:0] o1;
    adder_ add1 (a1,b1,o1);

    wire [`ADDER_WIDTH - 1:0] a2;
    wire [`ADDER_WIDTH - 1:0] b2;
    wire [`ADDER_WIDTH - 1:0] o2;
    adder_ add2 (a2,b2,o2);

    wire [`ADDER_WIDTH - 1:0] a3;
    wire [`ADDER_WIDTH - 1:0] b3;
    wire [`ADDER_WIDTH - 1:0] o3;
    adder_ add3 (a3,b3,o3);

    wire [`ADDER_WIDTH - 1:0] a4;
    wire [`ADDER_WIDTH - 1:0] b4;
    wire [`ADDER_WIDTH - 1:0] o4;
    adder_ add4 (a4,b4,o4);

    wire [`ADDER_WIDTH - 1:0] a5;
    wire [`ADDER_WIDTH - 1:0] b5;
    wire [`ADDER_WIDTH - 1:0] o5;
    adder_ add5 (a5,b5,o5);

    reg  [`ADDER_WIDTH - 1:0] pr0;
    reg  [`ADDER_WIDTH - 1:0] pr1;
    reg  [`ADDER_WIDTH - 1:0] pr2;
    reg  [`ADDER_WIDTH - 1:0] pr3;
    reg  [`ADDER_WIDTH - 1:0] pr4;
    reg  [`ADDER_WIDTH - 1:0] pr5;

    assign a0 = op_a;
    assign b0 = op_b;

    assign a1 = {2{pr0[(`ADDER_WIDTH/2) - 1:0]}};
    assign b1 = {2{pr0[`ADDER_WIDTH - 1:`ADDER_WIDTH/2]}};

    assign a2 = {2{pr1[(`ADDER_WIDTH/2) - 1:0]}};
    assign b2 = {2{pr1[`ADDER_WIDTH - 1:`ADDER_WIDTH/2]}};

    assign a3 = {2{pr2[(`ADDER_WIDTH/2) - 1:0]}};
    assign b3 = {2{pr2[`ADDER_WIDTH - 1:`ADDER_WIDTH/2]}};

    assign a4 = {2{pr3[(`ADDER_WIDTH/2) - 1:0]}};
    assign b4 = {2{pr3[`ADDER_WIDTH - 1:`ADDER_WIDTH/2]}};

    assign a5 = {2{pr4[(`ADDER_WIDTH/2) - 1:0]}};
    assign b5 = {2{pr4[`ADDER_WIDTH - 1:`ADDER_WIDTH/2]}};

    assign out = pr5;

    always @(posedge clock0 or negedge reset) begin
        if(!reset)begin
            pr0 <= {`ADDER_WIDTH{1'b0}};
            pr1 <= {`ADDER_WIDTH{1'b0}};
            pr2 <= {`ADDER_WIDTH{1'b0}};
            pr3 <= {`ADDER_WIDTH{1'b0}};
            pr4 <= {`ADDER_WIDTH{1'b0}};
            pr5 <= {`ADDER_WIDTH{1'b0}};
        end else begin
            pr0 <= o0;
            pr1 <= o1;
            pr2 <= o2;
            pr3 <= o3;
            pr4 <= o4;
            pr5 <= o5;
        end
    end


endmodule

module adder_ (
    input  wire [`ADDER_WIDTH - 1:0] op_a,
    input  wire [`ADDER_WIDTH - 1:0] op_b,
    output wire [`ADDER_WIDTH - 1:0] out
);
    assign out = op_a + op_b;  
endmodule