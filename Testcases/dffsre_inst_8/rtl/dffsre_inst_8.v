module dffsre_inst_8(
input D, 
input C, 
input E,R,S,
input sel,
output Q,Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,
output Q_out1,Q_out2,Q_out3,Q_out4,Q_out5,Q_out6,Q_out7,Q_out8); 

dffsre dut (.D(D),.C(C),.Q(Q),.E(E),.R(R),.S(S));
dffsre dut1 (.D(D),.C(C),.Q(Q_1),.E(E),.R(R),.S(S));
dffsre dut2 (.D(D),.C(C),.Q(Q_2),.E(E),.R(R),.S(S));
dffsre dut3 (.D(D),.C(C),.Q(Q_3),.E(E),.R(R),.S(S));
dffsre dut4 (.D(D),.C(C),.Q(Q_4),.E(E),.R(R),.S(S));
dffsre dut5 (.D(D),.C(C),.Q(Q_5),.E(E),.R(R),.S(S));
dffsre dut6 (.D(D),.C(C),.Q(Q_6),.E(E),.R(R),.S(S));
dffsre dut7 (.D(D),.C(C),.Q(Q_7),.E(E),.R(R),.S(S));

assign Q_out1 = sel ? Q : 0;
assign Q_out2 = sel ? Q_1 : 0;
assign Q_out3 = sel ? Q_2 : 0;
assign Q_out4 = sel ? Q_3 : 0;
assign Q_out5 = sel ? Q_4 : 0;
assign Q_out6 = sel ? Q_5 : 0;
assign Q_out7 = sel ? Q_6 : 0;
assign Q_out8 = sel ? Q_7 : 0;

endmodule