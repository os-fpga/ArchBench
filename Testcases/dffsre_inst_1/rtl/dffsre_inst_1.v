module dffsre_inst_1( 
input C,E,R,S,
input sel,
input D,
output Q
);

dffnsre dut (.D(D),.C(C),.Q(Q),.E(E),.R(R),.S(S));

endmodule