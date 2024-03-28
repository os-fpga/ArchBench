
    in <= 4'b0;
    rst <= 1'b1;
    mux_sel <= 1'b1;

    repeat(10)@(negedge clock0);
    rst <= 0;

    repeat(10)@(negedge clock0);
    zero();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    one();

    in <= 4'b0001;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    one();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    zero();

    in <= 4'b0010;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    one();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    zero();

    in <= 4'b0011;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    zero();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    one();

    in <= 4'b0100;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    one();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    zero();

    in <= 4'b0101;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    one();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    zero();

    in <= 4'b0110;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    one();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    zero();

    in <= 4'b0111;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    zero();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    one();

    in <= 4'b1000;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    zero();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    one();

    in <= 4'b1001;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    one();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    zero();

    in <= 4'b1010;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    one();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    zero();

    in <= 4'b1011;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    zero();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    one();

    in <= 4'b1100;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    zero();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    one();

    in <= 4'b1101;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    one();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    zero();

    in <= 4'b1110;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    one();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    zero();

    in <= 4'b1111;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    zero();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    one();

    rst <= 1;

    in <= 4'b0011;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    zero();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    zero();

    in <= 4'b0100;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    zero();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    zero();

    in <= 4'b0101;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    zero();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    zero();

    in <= 4'b0110;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    zero();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    zero();

    in <= 4'b0111;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    zero();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    zero();

    in <= 4'b1000;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    zero();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    zero();

    in <= 4'b1001;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    zero();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    zero();

    in <= 4'b1010;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    zero();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    zero();

    rst <= 0;

    in <= 4'b0010;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    one();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    zero();

    in <= 4'b0011;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    zero();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    one();

    in <= 4'b0100;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    one();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    zero();

    in <= 4'b0101;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    one();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    zero();

    in <= 4'b0110;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    one();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    zero();

    in <= 4'b0111;
    mux_sel <= 1;

    repeat(10)@(negedge clock0);
    zero();

    mux_sel <= 0;

    repeat(10)@(negedge clock0);
    one(); 
