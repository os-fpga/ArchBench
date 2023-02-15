module dffsre_inst_10lut( 
    input C,E,R,S,
    input sel,
    input D_in1,D_in2,D_in3,D_in4,D_in5,D_in6,D_in7,D_in8,D_in9,D_in10,
    output Q,Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,Q_8,Q_9);

    wire D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10;

    dffsre dut (.D(D_1),.C(C),.Q(Q),.E(E),.R(R),.S(S));
    dffsre dut1 (.D(D_2),.C(C),.Q(Q_1),.E(E),.R(R),.S(S));
    dffsre dut2 (.D(D_3),.C(C),.Q(Q_2),.E(E),.R(R),.S(S));
    dffsre dut3 (.D(D_4),.C(C),.Q(Q_3),.E(E),.R(R),.S(S));
    dffsre dut4 (.D(D_5),.C(C),.Q(Q_4),.E(E),.R(R),.S(S));
    dffsre dut5 (.D(D_6),.C(C),.Q(Q_5),.E(E),.R(R),.S(S));
    dffsre dut6 (.D(D_7),.C(C),.Q(Q_6),.E(E),.R(R),.S(S));
    dffsre dut7 (.D(D_8),.C(C),.Q(Q_7),.E(E),.R(R),.S(S));
    dffsre dut8 (.D(D_9),.C(C),.Q(Q_8),.E(E),.R(R),.S(S));
    dffsre dut9 (.D(D_10),.C(C),.Q(Q_9),.E(E),.R(R),.S(S));

    assign D_1 = sel ? D_in1 : 1;
    assign D_2 = sel ? D_in2 : 1;
    assign D_3 = sel ? D_in3 : 1;
    assign D_4 = sel ? D_in4 : 1;
    assign D_5 = sel ? D_in5 : 1;
    assign D_6 = sel ? D_in6 : 1;
    assign D_7 = sel ? D_in7 : 1;
    assign D_8 = sel ? D_in8 : 1;
    assign D_9 = sel ? D_in9 : 1;
    assign D_10 = sel ? D_in10 : 1;

endmodule