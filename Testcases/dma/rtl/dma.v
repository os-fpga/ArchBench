module dma (in_dat, mem_out_dat, rd_dat, pio_cause, x8ad_in, f8ad_in,
	io_addr, m2m_doneN, dreqN_in,

	sys_clk, sys_rstN, regs_rdN, regs_wrN, sys_irqN, pio_irqN,
	x8_gntN, f8_gntN, per_actN, rdceN, last_rdceN,
	per_ackN, xclk_syncN,

	per_addr_xor, per_dat_xor, out_dat_xor, chain_msb_xor, x8_out_xor, f8_out_xor,
	dma_doneN_xor, m2m_dma_ctl, dackN_out,

	cpu_irqN, x8_reqN, x8_rwN, x8_oeN, f8_reqN, f8_rwN, f8_oeN,
	per_rdN, per_wrN);

    input [31:0] in_dat, mem_out_dat, rd_dat;
    input [15:0] pio_cause;
    input [7:0] x8ad_in, f8ad_in;
    input [6:0] io_addr;
    input [2:0] m2m_doneN;
    input [1:0] dreqN_in;
    input sys_clk, sys_rstN, regs_rdN, regs_wrN, sys_irqN, pio_irqN,
	x8_gntN, f8_gntN, per_actN, rdceN, last_rdceN, per_ackN,
	xclk_syncN;
    wire [33:0] per_addr;
    wire [32:0] per_dat;
    wire [31:0] out_dat;
    output per_addr_xor, per_dat_xor, out_dat_xor,chain_msb_xor;
    wire [12:0] chain_msb;
    output x8_out_xor, f8_out_xor, dma_doneN_xor;
    wire [7:0] x8_out, f8_out, dma_doneN;
    output [3:0] m2m_dma_ctl;
    output [1:0] dackN_out;
    output cpu_irqN, x8_reqN, x8_rwN, x8_oeN, f8_reqN, f8_rwN, f8_oeN,
	per_rdN, per_wrN;

    wire [33:0] x8_addr, f8_addr;
    wire [32:0] x8_dat, f8_dat;
    wire [31:0] x8_out_datN, f8_out_datN;
    wire [3:0] x8_dma_ctl, f8_dma_ctl;
    wire [2:0] x8_doneN, f8_doneN;

   assign per_addr_xor = ^per_addr;
   assign per_dat_xor = ^per_dat;
   assign out_dat_xor = ^out_dat;
   assign chain_msb_xor = ^chain_msb;
   assign x8_out_xor = ^x8_out;
   assign f8_out_xor = ^f8_out;
   assign dma_doneN_xor = ^dma_doneN;

    dma_misc dma_misc (.x8_addr(x8_addr), .f8_addr(f8_addr),
	.x8_dat(x8_dat), .f8_dat(f8_dat), .in_dat(in_dat),
	.x8_out_datN(x8_out_datN), .f8_out_datN(f8_out_datN),
	.mem_out_dat(mem_out_dat), .pio_cause(pio_cause),
	.io_addr(io_addr), .m2m_doneN(m2m_doneN), .x8_doneN(x8_doneN),
	.f8_doneN(f8_doneN),
 
        .sys_clk(sys_clk), .sys_rstN(sys_rstN), .regs_rdN(regs_rdN), 
	.regs_wrN(regs_wrN), .sys_irqN(sys_irqN), .pio_irqN(pio_irqN),
	.per_ackN(per_ackN), .per_actN(per_actN),
	.last_rdceN(last_rdceN), .x8_rdN(x8_rdN), .x8_wrN(x8_wrN),
	.f8_rdN(f8_rdN), .f8_wrN(f8_wrN),

	.per_addr(per_addr), .per_dat(per_dat), .out_dat(out_dat),
	.chain_msb(chain_msb), .dma_doneN(dma_doneN),
	.m2m_dma_ctl(m2m_dma_ctl), .x8_dma_ctl(x8_dma_ctl),
	.f8_dma_ctl(f8_dma_ctl),

	.cpu_irqN(cpu_irqN), .per_rdN(per_rdN), .per_wrN(per_wrN),
	.x8_regs_rdN(x8_regs_rdN), .x8_regs_wrN(x8_regs_wrN),
	.f8_regs_rdN(f8_regs_rdN), .f8_regs_wrN(f8_regs_wrN),
	.x8_actN(x8_actN), .x8_ackN(x8_ackN), .f8_actN(f8_actN),
	.f8_ackN(f8_ackN));

    dma8 dmax8 (.in_dat(in_dat), .rd_dat(rd_dat),
	.chain_msb(chain_msb), .dma8ad_in(x8ad_in),
	.io_addr(io_addr[2:0]), .dma8_dma_ctl(x8_dma_ctl),
        
	.sys_clk(sys_clk), .sys_rstN(sys_rstN), .dreqN_in(dreqN_in[0]), 
	.dma8_regs_rdN(x8_regs_rdN), .dma8_regs_wrN(x8_regs_wrN),
        .dma8_gntN(x8_gntN), .dma8_actN(x8_actN), .rdceN(rdceN), 
	.last_rdceN(last_rdceN), .dma8_ackN(x8_ackN),
	.xclk_syncN(xclk_syncN),
 
        .dma8_addr(x8_addr), .dma8_dat(x8_dat), 
	.dma8_out_datN(x8_out_datN), .dma8_out(x8_out), 
	.dma8_doneN(x8_doneN),
 
        .dma8_rdN(x8_rdN), .dma8_wrN(x8_wrN), .dma8_reqN(x8_reqN), 
	.dma8_rwN(x8_rwN), .dma8_oeN(x8_oeN),
	.dackN_out(dackN_out[0]));

    dma8 dmaf8 (.in_dat(in_dat), .rd_dat(rd_dat),
	.chain_msb(chain_msb), .dma8ad_in(f8ad_in),
	.io_addr(io_addr[2:0]), .dma8_dma_ctl(f8_dma_ctl),
        
	.sys_clk(sys_clk), .sys_rstN(sys_rstN), .dreqN_in(dreqN_in[1]), 
	.dma8_regs_rdN(f8_regs_rdN), .dma8_regs_wrN(f8_regs_wrN),
        .dma8_gntN(f8_gntN), .dma8_actN(f8_actN), .rdceN(rdceN),
	.last_rdceN(last_rdceN), .dma8_ackN(f8_ackN),
	.xclk_syncN(xclk_syncN),
 
        .dma8_addr(f8_addr), .dma8_dat(f8_dat), 
	.dma8_out_datN(f8_out_datN), .dma8_out(f8_out), 
	.dma8_doneN(f8_doneN),
 
        .dma8_rdN(f8_rdN), .dma8_wrN(f8_wrN), .dma8_reqN(f8_reqN), 
	.dma8_rwN(f8_rwN), .dma8_oeN(f8_oeN),
	.dackN_out(dackN_out[1]));

endmodule

