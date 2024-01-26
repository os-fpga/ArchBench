#include "Vrom_post_route_tb.h"
int sc_main(int argc, char** argv){
    Verilated::commandArgs(argc,argv);
    Verilated::traceEverOn(true);
    Vrom_post_route_tb* top;
    top = new Vrom_post_route_tb("top");
        while (!Verilated::gotFinish())    {sc_start(1, SC_NS);}
    return 0;
}
