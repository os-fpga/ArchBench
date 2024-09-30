/////////////////////////////////////////
//  Functionality: 1. Use clock as data (manual instantiation of primitive) 
//  Author: Chung Shien
////////////////////////////////////////
// `timescale 1ns / 1ps

module top (
  input wire clk,
  input wire din,
  output wire dout
);
  wire clk_ibuf;
  wire din_ibuf;
  wire clk_clk_buf;
  wire dout_obuf;
  I_BUF clk_i_buf (
    .I(clk),
    .EN(1'b1),
    .O(clk_ibuf)
  );
  I_BUF din_i_buf (
    .I(din),
    .EN(1'b1),
    .O(din_ibuf)
  );
  CLK_BUF clk_buf(
    .I(clk_ibuf),
    .O(clk_clk_buf)
  );
  reg temp;
  always @(posedge clk_clk_buf) begin
    temp <= din_ibuf;
  end
  assign dout_obuf = temp & clk_ibuf;
  O_BUFT o_buft(
    .I(dout_obuf),
    .T(1'b1),
    .O(dout)
  );
endmodule
