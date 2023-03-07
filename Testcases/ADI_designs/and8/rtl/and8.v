module and8(
  a,
  b);

input wire [7:0] a;
output wire b;

assign b = a[7] & a[6] & a[5] & a[4] & a[3] & a[2] & a[1] & a[0];

endmodule