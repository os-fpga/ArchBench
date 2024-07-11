
    reset = 1;
    read = 'h0;
    write = 'h0;
    write_data = 'h0;
    @ (negedge clock0);
    reset = 0;
    @ (negedge clock0);


    while (!full_gfpga)  push ();
    while (!empty_gfpga) pop ();