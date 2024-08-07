module eight_mult_20x18_unsigned_regout
(
  input reset,
  input clock0,
  input [19:0] A,
  input [17:0] B,
  output reg [37:0] Y
);

  always @(posedge clock0 or posedge reset) begin
    if (reset) begin
      Y <= 0;
    end else begin
      Y <= A * B;
    end
  end
  
endmodule
