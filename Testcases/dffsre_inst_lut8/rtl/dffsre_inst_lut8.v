module dffsre_inst_lut8(
input D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8, 
input C, 
input E,R,S,
input sel,
output Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,Q_8);

wire lut_out1,lut_out2,lut_out3,lut_out4,lut_out5,lut_out6,lut_out7,lut_out8; 

dffsre dut1 (.D(lut_out1),.C(C),.Q(Q_1),.E(E),.R(R),.S(S));
dffsre dut2 (.D(lut_out2),.C(C),.Q(Q_2),.E(E),.R(R),.S(S));
dffsre dut3 (.D(lut_out3),.C(C),.Q(Q_3),.E(E),.R(R),.S(S));
dffsre dut4 (.D(lut_out4),.C(C),.Q(Q_4),.E(E),.R(R),.S(S));
dffsre dut5 (.D(lut_out5),.C(C),.Q(Q_5),.E(E),.R(R),.S(S));
dffsre dut6 (.D(lut_out6),.C(C),.Q(Q_6),.E(E),.R(R),.S(S));
dffsre dut7 (.D(lut_out7),.C(C),.Q(Q_7),.E(E),.R(R),.S(S));
dffsre dut8 (.D(lut_out8),.C(C),.Q(Q_8),.E(E),.R(R),.S(S));

assign lut_out1 = sel ? D_1 : 0;
assign lut_out2 = sel ? D_2 : 0;
assign lut_out3 = sel ? D_3 : 0;
assign lut_out4 = sel ? D_4 : 0;
assign lut_out5 = sel ? D_5 : 0;
assign lut_out6 = sel ? D_6 : 0;
assign lut_out7 = sel ? D_7 : 0;
assign lut_out8 = sel ? D_8 : 0;

endmodule