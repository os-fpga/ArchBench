module dffnsre_inst_8lut( 
input C,E,R,S,
input sel,
input D_in1,D_in2,D_in3,D_in4,D_in5,D_in6,D_in7,D_in8,
output Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,Q_8
);

wire D_out1,D_out2,D_out3,D_out4,D_out5,D_out6,D_out7,D_out8;

dffnsre dut1 (.D(D_in1),.C(C),.Q(D_out1),.E(E),.R(R),.S(S));
dffnsre dut2 (.D(D_in2),.C(C),.Q(D_out2),.E(E),.R(R),.S(S));
dffnsre dut3 (.D(D_in3),.C(C),.Q(D_out3),.E(E),.R(R),.S(S));
dffnsre dut4 (.D(D_in4),.C(C),.Q(D_out4),.E(E),.R(R),.S(S));
dffnsre dut5 (.D(D_in5),.C(C),.Q(D_out5),.E(E),.R(R),.S(S));
dffnsre dut6 (.D(D_in6),.C(C),.Q(D_out6),.E(E),.R(R),.S(S));
dffnsre dut7 (.D(D_in7),.C(C),.Q(D_out7),.E(E),.R(R),.S(S));
dffnsre dut8 (.D(D_in8),.C(C),.Q(D_out8),.E(E),.R(R),.S(S));

assign Q_1 = sel ? D_out1 : 1;
assign Q_2 = sel ? D_out2 : 1;
assign Q_3 = sel ? D_out3 : 1;
assign Q_4 = sel ? D_out4 : 1;
assign Q_5 = sel ? D_out5 : 1;
assign Q_6 = sel ? D_out6 : 1;
assign Q_7 = sel ? D_out7 : 1;
assign Q_8 = sel ? D_out8 : 1;

endmodule