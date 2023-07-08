// Wrapper module for ldpc_encoder_802_3an.v to reduce IO count
// Author:  Joel Landry

//`ifndef MODULE_NAME
//  `define MODULE_NAME ldpc_encoder_802_3an
//  `define OUTPUT_WIDTH 2048
//`endif


// Bits 0 to 1722 of the ldpc_encoder are simple pass-thrus
// Bits 1723 to 2047 contain the real function 
//   Note:  bit 1723 has 855 loads (roughly half of all bits)

// RACEDiffs at various widths
//  1724 :    7.9
//  1756 :   40.0
//  1788 :   74.4
//  1820 :  100.5
//  1852 :
//  1884 :
//  1916 :

//     1 :    6.7
//    10 :   94.3


module ldpc_encoder_96w  (clk, din, dout);  //  ldpc_encoder_802_3an_wrp (clk, din, dout);
parameter OUTWIDTH = 96;     // Maximum is 2048

input clk, din;
output dout;


reg[1722:0] shiftin;
reg[2047:0] regout;
wire[2047:0] ldpc_code;

integer i;

always @ (posedge clk)
begin
  shiftin[0] <= din;
  for (i = 0; i < 1722; i = i + 1)
    shiftin[i+1] <= shiftin[i];
end

always @ (posedge clk)
begin
  regout <= ldpc_code;
end  

assign dout = ^ regout[2047 : 2048-OUTWIDTH];

/*    
always @ (posedge clk)
begin
  if (ld_out)
    shiftout <= ldpc_code[OUTWIDTH-1:0];
  else
    begin
    // synthesis loop_limit 4000
    for (i = 0; i < OUTWIDTH; i = i + 1)
      shiftout[i+1] <= shiftout[i];
    end
end

assign dout = shiftout[OUTWIDTH-1];    
  
*/  

ldpc_encoder_802_3an_comb u0 (.uncoded_block(shiftin), .coded_block(ldpc_code));



endmodule



