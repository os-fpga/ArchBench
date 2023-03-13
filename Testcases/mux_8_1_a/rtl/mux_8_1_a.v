module mux_8_1_a(
    output out, 
    input D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2
    );

wire S1bar,S0bar,S2bar;

assign S1bar=~S1;
assign S0bar=~S0;
assign S2bar=~S2;
assign out = (D0 & S2bar & S1bar & S0bar) | (D1 & S2bar & S1bar & S0) | (D2 & S2bar & S1 & S0bar) + (D3 & S2bar & S1 & S0) + (D4 & S2 & S1bar & S0bar) + (D5 & S2 & S1bar & S0) + (D6 & S2 & S1 & S0bar) + (D7 & S2 & S1 & S0);

endmodule