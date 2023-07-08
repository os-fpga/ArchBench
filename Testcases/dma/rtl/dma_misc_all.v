`timescale 1ps/1ps

`define CQ #100
`define QO #100
`define XO #100

module dma_misc (x8_addr, f8_addr, x8_dat, f8_dat, in_dat, x8_out_datN,
	f8_out_datN, mem_out_dat, pio_cause, io_addr, m2m_doneN,
	x8_doneN, f8_doneN,

	sys_clk, sys_rstN, regs_rdN, regs_wrN, sys_irqN, pio_irqN,
	per_ackN, per_actN, last_rdceN, x8_rdN, x8_wrN, f8_rdN, f8_wrN,

	per_addr, per_dat, out_dat, chain_msb, dma_doneN, m2m_dma_ctl,
	x8_dma_ctl, f8_dma_ctl,

	cpu_irqN, per_rdN, per_wrN, x8_regs_rdN, x8_regs_wrN,
	f8_regs_rdN, f8_regs_wrN, x8_actN, x8_ackN, f8_actN, f8_ackN);

    input [33:0] x8_addr, f8_addr;
    input [32:0] x8_dat, f8_dat;
    input [31:0] in_dat, x8_out_datN, f8_out_datN, mem_out_dat;
    input [15:0] pio_cause;
    input [6:0] io_addr;
    input [2:0] m2m_doneN, x8_doneN, f8_doneN;
    input sys_clk, sys_rstN, regs_rdN, regs_wrN, sys_irqN, pio_irqN,
	per_ackN, per_actN, last_rdceN, x8_rdN, x8_wrN, f8_rdN, f8_wrN;
    output [33:0] per_addr;
    output [32:0] per_dat;
    output [31:0] out_dat;
    output [12:0] chain_msb;
    output [7:0] dma_doneN;
    output [3:0] m2m_dma_ctl, x8_dma_ctl, f8_dma_ctl;
    output cpu_irqN, per_wrN, per_rdN, x8_regs_rdN, x8_regs_wrN,
	f8_regs_rdN, f8_regs_wrN, x8_ackN, f8_ackN, x8_actN, f8_actN;

    wire [31:0] ctl_out_datN, tc_out_datN;
    wire [7:0] dirq_out_datN;
    wire [1:0] timer_doneN, timer_ena, timer_ctl;

    dma_regs dma_regs (.ctl_out_datN(ctl_out_datN),
	.x8_out_datN(x8_out_datN), .f8_out_datN(f8_out_datN),
	.tc_out_datN(tc_out_datN), .mem_out_dat(mem_out_dat),
	.dirq_out_datN(dirq_out_datN), .io_addr3(io_addr[6:3]),

	.sys_clk(sys_clk), .regs_rdN(regs_rdN), .regs_wrN(regs_wrN),

	.out_dat(out_dat),

	.dirq_regs_rdN(dirq_regs_rdN), .dirq_regs_wrN(dirq_regs_wrN),
	.tc_regs_rdN(tc_regs_rdN), .tc_regs_wrN(tc_regs_wrN),
	.ctl_regs_rdN(ctl_regs_rdN), .ctl_regs_wrN(ctl_regs_wrN),
	.x8_regs_rdN(x8_regs_rdN), .x8_regs_wrN(x8_regs_wrN),
	.f8_regs_rdN(f8_regs_rdN), .f8_regs_wrN(f8_regs_wrN));

    ctl ctl (.in_dat(in_dat), .pio_cause(pio_cause),
	.gen_doneN({f8_doneN[2:1], x8_doneN[2:1], m2m_doneN[2:1]}),
	.io_addr(io_addr[4:0]), .timer_doneN(timer_doneN),
	.timer_ena(timer_ena),

	.sys_clk(sys_clk), .sys_rstN(sys_rstN),
	.regs_rdN(ctl_regs_rdN), .regs_wrN(ctl_regs_wrN),

	.out_datN(ctl_out_datN), .chain_msb(chain_msb),
	.dma_doneN(dma_doneN), .m2m_dma_ctl(m2m_dma_ctl),
	.x8_dma_ctl(x8_dma_ctl), .f8_dma_ctl(f8_dma_ctl),
	.timer_ctl(timer_ctl));

    timer timer (.in_dat(in_dat), .io_addr(io_addr[2:0]),
	.timer_ctl(timer_ctl),

	.sys_clk(sys_clk), .sys_rstN(sys_rstN),
	.regs_rdN(tc_regs_rdN), .regs_wrN(tc_regs_wrN),

	.out_datN(tc_out_datN), .timer_ena(timer_ena),
	.timer_doneN(timer_doneN));

    dma_irq dma_irq (.in_dat(in_dat[7:0]), .io_addr(io_addr[2:0]),
	.m2m_doneN(m2m_doneN[1:0]), .x8_doneN(x8_doneN[1:0]),
	.f8_doneN(f8_doneN[1:0]), .timer_doneN(timer_doneN),

	.sys_clk(sys_clk), .sys_rstN(sys_rstN),
	.regs_rdN(dirq_regs_rdN), .regs_wrN(dirq_regs_wrN),
	.sys_irqN(sys_irqN), .pio_irqN(pio_irqN),

	.out_datN(dirq_out_datN), .cpu_irqN(cpu_irqN));

    mem_if mem_if (.x8_addr(x8_addr), .f8_addr(f8_addr),
	.x8_dat(x8_dat), .f8_dat(f8_dat),

	.sys_clk(sys_clk), .sys_rstN(sys_rstN), .per_ackN(per_ackN),
	.per_actN(per_actN), .last_rdceN(last_rdceN), .x8_rdN(x8_rdN),
	.x8_wrN(x8_wrN), .f8_rdN(f8_rdN), .f8_wrN(f8_wrN),

	.per_addr(per_addr), .per_dat(per_dat),

	.per_rdN(per_rdN), .per_wrN(per_wrN), .x8_actN(x8_actN),
	.x8_ackN(x8_ackN), .f8_actN(f8_actN), .f8_ackN(f8_ackN));

endmodule

module dma_regs (ctl_out_datN, x8_out_datN, f8_out_datN,
	tc_out_datN, mem_out_dat, dirq_out_datN, io_addr3,

	sys_clk, regs_rdN, regs_wrN,

	out_dat,

	dirq_regs_rdN, dirq_regs_wrN, tc_regs_rdN, tc_regs_wrN,
	ctl_regs_rdN, ctl_regs_wrN, x8_regs_rdN, x8_regs_wrN,
	f8_regs_rdN, f8_regs_wrN);

    input [31:0] ctl_out_datN, x8_out_datN, f8_out_datN,
	tc_out_datN, mem_out_dat;
    input [7:0] dirq_out_datN;
    input [3:0] io_addr3;
    input sys_clk, regs_rdN, regs_wrN;
    output [31:0] out_dat;
    output dirq_regs_rdN, dirq_regs_wrN, tc_regs_rdN, tc_regs_wrN,
	ctl_regs_rdN, ctl_regs_wrN, x8_regs_rdN, x8_regs_wrN,
	f8_regs_rdN, f8_regs_wrN;

    reg [31:0] dma_out_dat;

    always @(posedge sys_clk)
	begin
	    dma_out_dat[31:8] <= `CQ ~(ctl_out_datN[31:8] &
		x8_out_datN[31:8] & f8_out_datN[31:8] &
		tc_out_datN[31:8]);
	    dma_out_dat[7:0] <= `CQ ~(ctl_out_datN[7:0] &
		x8_out_datN[7:0] & f8_out_datN[7:0] &
		tc_out_datN[7:0] & dirq_out_datN);
	end

    assign out_dat = dma_out_dat | mem_out_dat;

// io_addr3 is io_addr[6:3].

    assign ctl_regs_rdN = ~(~regs_rdN & (io_addr3[3:2] == 2'b00));
    assign ctl_regs_wrN = ~(~regs_wrN & (io_addr3[3:2] == 2'b00));
    assign x8_regs_rdN = ~(~regs_rdN & (io_addr3 == 4'b0100));
    assign x8_regs_wrN = ~(~regs_wrN & (io_addr3 == 4'b0100));
    assign f8_regs_rdN = ~(~regs_rdN & (io_addr3 == 4'b0101));
    assign f8_regs_wrN = ~(~regs_wrN & (io_addr3 == 4'b0101));
    assign tc_regs_wrN = ~(~regs_wrN & (io_addr3 == 4'b1110));
    assign tc_regs_rdN = ~(~regs_rdN & (io_addr3 == 4'b1110));
    assign dirq_regs_rdN = ~(~regs_rdN & (io_addr3 == 4'b1111));
    assign dirq_regs_wrN = ~(~regs_wrN & (io_addr3 == 4'b1111));

endmodule

module timer (in_dat, io_addr, timer_ctl,

	sys_clk, sys_rstN, regs_rdN, regs_wrN,

	out_datN, timer_ena, timer_doneN);


    input [31:0] in_dat;
    input [2:0] io_addr;
    input [1:0] timer_ctl;
    input sys_clk, sys_rstN, regs_rdN, regs_wrN;
    output [31:0] out_datN;
    output [1:0] timer_ena, timer_doneN;

    wire [31:0] t0_out_datN, t1_out_datN;
    wire t0_regs_wrN, t0_regs_rdN, t1_regs_wrN, t1_regs_rdN;

    assign t0_regs_wrN = ~(~regs_wrN & ~io_addr[2]);
    assign t0_regs_rdN = ~(~regs_rdN & ~io_addr[2]);
    assign t1_regs_wrN = ~(~regs_wrN & io_addr[2]);
    assign t1_regs_rdN = ~(~regs_rdN & io_addr[2]);

    assign out_datN = t0_out_datN & t1_out_datN;

    tim_cnt tim_cnt0 (.in_dat(in_dat), .io_addr(io_addr[1:0]), 
	.sys_clk(sys_clk), .sys_rstN(sys_rstN), .regs_rdN(t0_regs_rdN),
        .regs_wrN(t0_regs_wrN), .timer_ctl(timer_ctl[0]),
 
        .out_datN(t0_out_datN), .timer_ena(timer_ena[0]),
	.timer_doneN(timer_doneN[0]));

    tim_cnt tim_cnt1 (.in_dat(in_dat), .io_addr(io_addr[1:0]), 
	.sys_clk(sys_clk), .sys_rstN(sys_rstN), .regs_rdN(t1_regs_rdN),
        .regs_wrN(t1_regs_wrN), .timer_ctl(timer_ctl[1]),
 
        .out_datN(t1_out_datN), .timer_ena(timer_ena[1]),
	.timer_doneN(timer_doneN[1]));

endmodule

module ctl (in_dat, pio_cause, gen_doneN, io_addr, timer_doneN,
	timer_ena,

	sys_clk, sys_rstN, regs_rdN, regs_wrN,

	out_datN, chain_msb, dma_doneN, m2m_dma_ctl, x8_dma_ctl,
	f8_dma_ctl, timer_ctl);

    input [31:0] in_dat;
    input [15:0] pio_cause;
    input [5:0] gen_doneN;
    input [4:0] io_addr;
    input [1:0] timer_doneN, timer_ena;
    input sys_clk, sys_rstN, regs_rdN, regs_wrN;
    output [31:0] out_datN;
    output [12:0] chain_msb;
    output [7:0] dma_doneN;
    output [3:0] m2m_dma_ctl, x8_dma_ctl, f8_dma_ctl;
    output [1:0] timer_ctl;

    wire [63:0] qualiter;
    wire [5:0] pauseN;

    ctl_regs ctl_regs (.in_dat(in_dat), .gen_doneN(gen_doneN),
	.io_addr(io_addr), .timer_doneN(timer_doneN),

	.sys_clk(sys_clk), .sys_rstN(sys_rstN), .regs_rdN(regs_rdN), 
	.regs_wrN(regs_wrN),

	.qualiter(qualiter), .out_datN(out_datN),
	.chain_msb(chain_msb), .pauseN(pauseN), .dma_doneN(dma_doneN),
	.m2m_dma_ctl({m2m_dma_ctl[3], m2m_dma_ctl[0]}),
	.x8_dma_ctl({x8_dma_ctl[3], x8_dma_ctl[0]}),
	.f8_dma_ctl({f8_dma_ctl[3], f8_dma_ctl[0]}));

    qualify qmb (.pio_cause(pio_cause), .qualiter(qualiter[7:0]),
	.gen_doneN(gen_doneN), .timer_doneN(timer_doneN),
	.sys_clk(sys_clk), .sys_rstN(sys_rstN), .in_ena(pauseN[0]),
	.out_ena(m2m_dma_ctl[1]));
    qualify qma (.pio_cause(pio_cause), .qualiter(qualiter[15:8]),
	.gen_doneN(gen_doneN), .timer_doneN(timer_doneN),
	.sys_clk(sys_clk), .sys_rstN(sys_rstN), .in_ena(pauseN[1]),
	.out_ena(m2m_dma_ctl[2]));

    qualify qxb (.pio_cause(pio_cause), .qualiter(qualiter[23:16]),
	.gen_doneN(gen_doneN), .timer_doneN(timer_doneN),
	.sys_clk(sys_clk), .sys_rstN(sys_rstN), .in_ena(pauseN[2]),
	.out_ena(x8_dma_ctl[1]));
    qualify qxa (.pio_cause(pio_cause), .qualiter(qualiter[31:24]),
	.gen_doneN(gen_doneN), .timer_doneN(timer_doneN),
	.sys_clk(sys_clk), .sys_rstN(sys_rstN), .in_ena(pauseN[3]),
	.out_ena(x8_dma_ctl[2]));

    qualify qfb (.pio_cause(pio_cause), .qualiter(qualiter[39:32]),
	.gen_doneN(gen_doneN), .timer_doneN(timer_doneN),
	.sys_clk(sys_clk), .sys_rstN(sys_rstN), .in_ena(pauseN[4]),
	.out_ena(f8_dma_ctl[1]));
    qualify qfa (.pio_cause(pio_cause), .qualiter(qualiter[47:40]),
	.gen_doneN(gen_doneN), .timer_doneN(timer_doneN),
	.sys_clk(sys_clk), .sys_rstN(sys_rstN), .in_ena(pauseN[5]),
	.out_ena(f8_dma_ctl[2]));

    qualify qt0 (.pio_cause(pio_cause), .qualiter(qualiter[55:48]),
	.gen_doneN(gen_doneN), .timer_doneN(timer_doneN),
	.sys_clk(sys_clk), .sys_rstN(sys_rstN), .in_ena(timer_ena[0]),
	.out_ena(timer_ctl[0]));
    qualify qt1 (.pio_cause(pio_cause), .qualiter(qualiter[63:56]),
	.gen_doneN(gen_doneN), .timer_doneN(timer_doneN),
	.sys_clk(sys_clk), .sys_rstN(sys_rstN), .in_ena(timer_ena[1]),
	.out_ena(timer_ctl[1]));

endmodule

module dma_irq (in_dat, io_addr, m2m_doneN, x8_doneN, f8_doneN,
	timer_doneN,

	sys_clk, sys_rstN, regs_rdN, regs_wrN, sys_irqN, pio_irqN,

	out_datN, cpu_irqN);

    input [7:0] in_dat;
    input [2:0] io_addr;
    input [1:0] m2m_doneN, x8_doneN, f8_doneN, timer_doneN;
    input sys_clk, sys_rstN, regs_rdN, regs_wrN, sys_irqN, pio_irqN;
    output [7:0] out_datN;
    output cpu_irqN;

    wire [7:0] maskN, cause, irqN_in;
    wire dma_irqN, cause_wrN;

    reg [7:0] preg;
    reg [7:0] out_datN;

// addr 0 is preg = external irq maskN reg, 0 = masked, 1 = enabled.
// addr 1 is cause = int irq cause, 0 = inactive, 1 = active.
 
    always @(posedge sys_clk or negedge sys_rstN)
        if (~sys_rstN)
            preg <= `CQ 8'h0;
        else if (~regs_wrN)
            case (io_addr) // synopsys parallel_case full_case
                3'b000: preg <= `CQ in_dat;
                default:;
            endcase
 
    always @(regs_rdN or io_addr or preg or cause)
        if (regs_rdN)
            out_datN = 8'hff;
        else case (io_addr) // synopsys parallel_case full_case
            3'b000: out_datN = ~preg[7:0];
            3'b001: out_datN = ~cause[7:0];
	    default: out_datN = 8'hff;
        endcase

// All the interrupts in the world are combined here.

    assign maskN = preg;
    assign dma_irqN = ~|(cause & maskN);
    assign cpu_irqN = ~(~sys_irqN | ~pio_irqN | ~dma_irqN);
    assign cause_wrN = ~(~regs_wrN & (io_addr == 3'b001));

    assign irqN_in = {timer_doneN, f8_doneN, x8_doneN, m2m_doneN};
 
    irq_bit irq_bit0 (.sys_clk(sys_clk), .sys_rstN(sys_rstN),
        .cause_wrN(cause_wrN), .in_dat(in_dat[0]),
	.irqN_in(irqN_in[0]), .cause(cause[0]));
    irq_bit irq_bit1 (.sys_clk(sys_clk), .sys_rstN(sys_rstN),
        .cause_wrN(cause_wrN), .in_dat(in_dat[1]),
	.irqN_in(irqN_in[1]), .cause(cause[1]));
    irq_bit irq_bit2 (.sys_clk(sys_clk), .sys_rstN(sys_rstN),
        .cause_wrN(cause_wrN), .in_dat(in_dat[2]),
	.irqN_in(irqN_in[2]), .cause(cause[2]));
    irq_bit irq_bit3 (.sys_clk(sys_clk), .sys_rstN(sys_rstN),
        .cause_wrN(cause_wrN), .in_dat(in_dat[3]),
	.irqN_in(irqN_in[3]), .cause(cause[3]));
    irq_bit irq_bit4 (.sys_clk(sys_clk), .sys_rstN(sys_rstN),
        .cause_wrN(cause_wrN), .in_dat(in_dat[4]),
	.irqN_in(irqN_in[4]), .cause(cause[4]));
    irq_bit irq_bit5 (.sys_clk(sys_clk), .sys_rstN(sys_rstN),
        .cause_wrN(cause_wrN), .in_dat(in_dat[5]),
	.irqN_in(irqN_in[5]), .cause(cause[5]));
    irq_bit irq_bit6 (.sys_clk(sys_clk), .sys_rstN(sys_rstN),
        .cause_wrN(cause_wrN), .in_dat(in_dat[6]),
	.irqN_in(irqN_in[6]), .cause(cause[6]));
    irq_bit irq_bit7 (.sys_clk(sys_clk), .sys_rstN(sys_rstN),
        .cause_wrN(cause_wrN), .in_dat(in_dat[7]),
	.irqN_in(irqN_in[7]), .cause(cause[7]));

endmodule

module mem_if (x8_addr, f8_addr, x8_dat, f8_dat,

	sys_clk, sys_rstN, per_ackN, per_actN, last_rdceN, x8_rdN,
	x8_wrN, f8_rdN, f8_wrN,

	per_addr, per_dat,

	per_rdN, per_wrN, x8_actN, x8_ackN, f8_actN, f8_ackN);

    input [33:0] x8_addr, f8_addr;
    input [32:0] x8_dat, f8_dat;
    input sys_clk, sys_rstN, per_ackN, per_actN, last_rdceN, x8_rdN,
	x8_wrN, f8_rdN, f8_wrN;
    output [33:0] per_addr;
    output [32:0] per_dat;
    output per_rdN, per_wrN, x8_actN, x8_ackN, f8_actN, f8_ackN;

    per_wsm per_wsm (.sys_clk(sys_clk), .sys_rstN(sys_rstN),
	.x8_wrN(x8_wrN), .f8_wrN(f8_wrN), .ffullN(ffullN),
	.last_wordN(last_wordN),

	.buf_wrN(buf_wrN), .x8_ackN(x8_ackN), .f8_ackN(f8_ackN),
	.buf_addrN(buf_addrN), .last_agent(agent));

    per_buf per_buf (.x8_dat(x8_dat), .f8_dat(f8_dat),

	.sys_clk(sys_clk), .sys_rstN(sys_rstN), .per_ackN(per_ackN),
	.buf_wrN(buf_wrN), .buf_addrN(buf_addrN), .agent(agent),

	.per_dat(per_dat), .per_wrN(per_wrN), .ffullN(ffullN),
	.last_wordN(last_wordN));

    per_arb per_arb (.x8_addr(x8_addr), .f8_addr(f8_addr),

	.sys_clk(sys_clk), .sys_rstN(sys_rstN), .per_actN(per_actN),
	.last_rdceN(last_rdceN), .x8_rdN(x8_rdN),
	.f8_rdN(f8_rdN),

	.per_addr(per_addr), .per_rdN(per_rdN), .x8_actN(x8_actN),
	.f8_actN(f8_actN));

endmodule

module ctl_regs (in_dat, gen_doneN, io_addr, timer_doneN,

	sys_clk, sys_rstN, regs_rdN, regs_wrN,

	qualiter, out_datN, chain_msb, dma_doneN, pauseN, m2m_dma_ctl,
	x8_dma_ctl, f8_dma_ctl);
	

    input [31:0] in_dat;
    input [5:0] gen_doneN;
    input [4:0] io_addr;
    input [1:0] timer_doneN;
    input sys_clk, sys_rstN, regs_rdN, regs_wrN;
    output [63:0] qualiter;
    output [31:0] out_datN;
    output [12:0] chain_msb;
    output [7:0] dma_doneN;
    output [5:0] pauseN;
    output [1:0] m2m_dma_ctl, x8_dma_ctl, f8_dma_ctl;

    reg[88:0] preg;
    reg[31:0] out_datN;
    reg [7:0] dma_doneN;

    always @(posedge sys_clk or negedge sys_rstN)
        if (~sys_rstN)
            preg <= `CQ 89'h0;
        else if (~regs_wrN)
            case (io_addr) // synopsys parallel_case full_case
                5'b00000: preg[11:0] <= `CQ in_dat[11:0];
                5'b00001: preg[24:12] <= `CQ in_dat[12:0];
		5'b01000: preg[56:25] <= `CQ in_dat;
		5'b01001: preg[88:57] <= `CQ in_dat;
		default:;
            endcase
 
    always @(regs_rdN or io_addr or preg)
        if (regs_rdN)
            out_datN = 32'hffffffff;
        else case (io_addr) // synopsys parallel_case full_case
            5'b00000: out_datN = {20'hfffff, ~preg[11:0]};
            5'b00001: out_datN = {19'h7ffff, ~preg[24:12]};
            5'b01000: out_datN = ~preg[56:25];
            5'b01001: out_datN = ~preg[88:57];
	    default out_datN = 32'hffffffff;
        endcase

    assign qualiter = preg[88:25];
    assign chain_msb = preg[24:12];
    assign pauseN = {preg[10:9], preg[6:5], preg[2:1]};
    assign m2m_dma_ctl = {preg[3], preg[0]};
    assign x8_dma_ctl = {preg[7], preg[4]};
    assign f8_dma_ctl = {preg[11], preg[8]};

// xxx_ctl is {next_band, acc_pauseN, band_pauseN, dma_ena}.

    always @(posedge sys_clk)
	dma_doneN <= `CQ {timer_doneN, gen_doneN};

endmodule

module qualify (pio_cause, qualiter, gen_doneN, timer_doneN,

	sys_clk, sys_rstN, in_ena,

	out_ena);

    input [15:0] pio_cause;
    input [7:0] qualiter;
    input [5:0] gen_doneN;
    input [1:0] timer_doneN;
    input sys_clk, sys_rstN, in_ena;
    output out_ena;

    wire [63:0] val_array;
    wire [5:0] mapper;
    wire map_val;

    reg out_ena;

    assign mapper = qualiter[5:0];
    assign val_array = {16'h0, pio_cause, 24'h0, ~timer_doneN,
	~gen_doneN};
    // assign val_array = {pio_cause, 8'h0, ~timer_doneN,
    //	~gen_doneN};
    assign map_val = val_array[mapper];

    always @(posedge sys_clk or negedge sys_rstN)
	if (~sys_rstN)
	    out_ena <= `CQ 0;
	else if (in_ena & ~qualiter[7])
	    out_ena <= `CQ 1;
	else if (in_ena)
	    out_ena <= `CQ ~(qualiter[6] ^ map_val);
	else out_ena <= `CQ 0;

endmodule

module tim_cnt (in_dat, io_addr, sys_clk, sys_rstN, regs_rdN,
	regs_wrN, timer_ctl,

	out_datN, timer_ena, timer_doneN);

    input [31:0] in_dat;
    input [1:0] io_addr;
    input sys_clk, sys_rstN, regs_rdN, regs_wrN, timer_ctl;
    output [31:0] out_datN;
    output timer_ena, timer_doneN;

    wire [31:0] start_value;
    wire loadN;

    reg [33:0] preg;
    reg [31:0] out_datN;
    reg [15:0] timer_lsb, timer_msb;
    reg timer_ctl_reg, continuousN, lsb_doneN, msb_doneN;

    always @(posedge sys_clk or negedge sys_rstN)
        if (~sys_rstN)
            preg <= `CQ 34'h0;
        else if (~regs_wrN)
            case (io_addr) // synopsys parallel_case full_case
                2'b00: preg[31:0] <= `CQ in_dat;
		2'b10: preg[33:32] <= `CQ in_dat[1:0];
                default:;
            endcase
 
    always @(regs_rdN or io_addr or preg or timer_msb or timer_lsb)
        if (regs_rdN)
            out_datN = 32'hffffffff;
        else case (io_addr) // synopsys parallel_case full_case
            2'b00: out_datN = ~preg[31:0];
            2'b01: out_datN = {~timer_msb, ~timer_lsb};
	    2'b10: out_datN = {30'h3fffffff, ~preg[33:32]};
	    default: out_datN = 32'hffffffff;
        endcase

    assign start_value = preg[31:0];
    assign timer_ena = preg[33];

    always @(posedge sys_clk)
	timer_ctl_reg <= `CQ timer_ctl;

    always @(posedge sys_clk)
	continuousN <= `CQ preg[32];

    assign loadN = ~(timer_ctl &
	(~timer_ctl_reg |			// start edge
	(~continuousN & ~timer_doneN)));	// continuous

    always @(posedge sys_clk)
        if (~loadN)
            timer_lsb <= `CQ start_value[15:0];
	else if (~timer_doneN);
        else if (timer_ctl)
            timer_lsb <= `CQ timer_lsb -  1;

    always @(posedge sys_clk)
        if (~loadN)
            timer_msb <= `CQ start_value[31:16];
	else if (~timer_doneN);
	else if (~lsb_doneN & timer_ctl)
	    timer_msb <= `CQ timer_msb - 1;

    always @(posedge sys_clk)
	lsb_doneN <= `CQ ~(timer_ctl & timer_ctl_reg &
	    ((timer_lsb == 16'h1) |
	    (continuousN & (timer_lsb == 16'h0))));
	    
    always @(posedge sys_clk)
	msb_doneN <= `CQ ~(timer_ctl & (timer_msb == 16'h0));
    assign timer_doneN = ~(~lsb_doneN & ~msb_doneN);
	    
endmodule

module per_wsm (sys_clk, sys_rstN, x8_wrN, f8_wrN, ffullN,
	last_wordN,

	buf_wrN, x8_ackN, f8_ackN, buf_addrN, last_agent);

    input sys_clk, sys_rstN, x8_wrN, f8_wrN, ffullN,
	last_wordN;
    output buf_wrN, x8_ackN, f8_ackN, buf_addrN, last_agent;

    wire wrN;

    reg [1:0] state;
    reg next_agent, last_agent;

    `define BUF_IDLE	2'b00
    `define BUF_ADDR	2'b10
    `define BUF_WRITE	2'b11

    assign wrN = ~(~x8_wrN | ~f8_wrN);
    always @(posedge sys_clk or negedge sys_rstN)
	if (~sys_rstN)
	    state <= `CQ `BUF_IDLE;
	else case (state) // synopsys parallel_case full_case
	    `BUF_IDLE:
		if (~wrN & ffullN)
		    state <= `CQ `BUF_ADDR;
	    `BUF_ADDR:
		state <= `CQ `BUF_WRITE;
	    `BUF_WRITE:
		if (ffullN & ~last_wordN)
		    state <= `CQ `BUF_IDLE;
	endcase
    assign buf_wrN = ~state[1];
    assign buf_addrN = ~(state == `BUF_ADDR);

    always @(last_agent or x8_wrN or f8_wrN)
	case (last_agent) // synopsys parallel_case full_case
	    0:
		if (~x8_wrN)
		    next_agent = 0;
		else if (~f8_wrN)
		    next_agent = 1;
		else next_agent = 0;
	    1:
		if (~f8_wrN)
		    next_agent = 1;
		else if (~x8_wrN)
		    next_agent = 0;
		else next_agent = 1;
	endcase

    always @(posedge sys_clk or negedge sys_rstN)
	if (~sys_rstN)
	    last_agent <= `CQ 0;
	else if (buf_wrN & ~wrN & ffullN)
	    last_agent <= `CQ next_agent;

    assign x8_ackN = ~(~buf_wrN & ffullN & ~last_agent);
    assign f8_ackN = ~(~buf_wrN & ffullN & last_agent);

endmodule

module per_buf (x8_dat, f8_dat,

	sys_clk, sys_rstN, per_ackN, buf_wrN, buf_addrN, agent,

	per_dat, per_wrN, ffullN, last_wordN);

    input [32:0] x8_dat, f8_dat;
    input sys_clk, sys_rstN, per_ackN, buf_wrN, buf_addrN, agent;
    output [32:0] per_dat;
    output per_wrN, ffullN, last_wordN;

    wire [32:0] next_dat;
    wire [1:0] siz;

    reg [65:0] dat_reg;
    reg [2:0] nword;
    reg [1:0] in_cnt, out_cnt;
    reg per_wrN, ffullN;

    assign next_dat = (agent)? f8_dat : x8_dat;

    assign siz = next_dat[31:30];
    always @(posedge sys_clk or negedge sys_rstN)
	if (~sys_rstN)
	    nword <= `CQ 0;
	else if (~buf_addrN)
	    case (siz)  // synopsys parallel_case full_case
		2'b10: nword <= `CQ 3;
		2'b11: nword <= `CQ 7;
		default: nword <= `CQ 0;
	    endcase
	else if (ffullN & last_wordN)
	    nword <= `CQ nword - 1;
    assign last_wordN = |nword;

    always @(posedge sys_clk or negedge sys_rstN)
	if (~sys_rstN)
	    in_cnt <= `CQ 0;
	else if (~buf_wrN & ffullN)
	    in_cnt <= `CQ in_cnt + 1;
    always @(posedge sys_clk or negedge sys_rstN)
	if (~sys_rstN)
	    out_cnt <= `CQ 0;
	else if (~per_ackN)
	    out_cnt <= `CQ out_cnt + 1;
    always @(posedge sys_clk or negedge sys_rstN)
	if (~sys_rstN)
	    ffullN <= `CQ 1;
	else if (~per_ackN)
	    ffullN <= `CQ 1;
	else if (~buf_wrN & (in_cnt[0] ^ out_cnt[0]))
	    ffullN <= `CQ 0;

    always @(posedge sys_clk)
	if (~buf_wrN & ffullN & ~in_cnt[0])
	    dat_reg[32:0] <= `CQ next_dat;
	else if (~buf_wrN & ffullN)
	    dat_reg[65:33] <= `CQ next_dat;
    assign per_dat = (out_cnt[0])? dat_reg[65:33] : dat_reg[32:0];

    always @(posedge sys_clk or negedge sys_rstN)
	if (~sys_rstN)
	    per_wrN <= `CQ 1;
	else if (~buf_addrN)
	    per_wrN <= `CQ 0;
	else if (~per_ackN)
	    per_wrN <= `CQ 1;
	else if (~buf_wrN & ffullN)
	    per_wrN <= `CQ 0;

endmodule

module per_arb (x8_addr, f8_addr,

	sys_clk, sys_rstN, per_actN, last_rdceN, x8_rdN, f8_rdN,

	per_addr, per_rdN, x8_actN, f8_actN);

    input [33:0] x8_addr, f8_addr;
    input sys_clk, sys_rstN, per_actN, last_rdceN, x8_rdN, f8_rdN;
    output [33:0] per_addr;
    output per_rdN, x8_actN, f8_actN;

    wire rdN;

    reg [3:0] state;
    reg x8_lastN, next_agent;

    `define PER_IDLE	4'b0000
    `define PER_REQ	4'b0101
    `define PER_GNT	4'b1001
    `define PER_CHECK	4'b0001
    `define PER_FIN	4'b0011

    assign rdN = ~(~x8_rdN | ~f8_rdN);

    always @(posedge sys_clk or negedge sys_rstN)
	if (~sys_rstN)
	    state <= `CQ `PER_IDLE;
	else case (state) // synopsys parallel_case full_case
	    `PER_IDLE:
		if (~rdN)
		    state <= `CQ `PER_REQ;
	    `PER_REQ:
		if (~per_actN)
		    state <= `CQ `PER_GNT;
	    `PER_GNT:
		state <= `CQ `PER_CHECK;
	    `PER_CHECK:
		state <= `CQ (~last_rdceN)? `PER_IDLE : `PER_FIN;
	    `PER_FIN:
		if (~last_rdceN)
		    state <= `CQ `PER_IDLE;
	endcase

    assign per_rdN = ~state[2];

    always @(x8_lastN or x8_rdN or f8_rdN)
	case (x8_lastN) // synopsys parallel_case full_case
	    0: if (~f8_rdN)
		    next_agent = 1;
		else next_agent = 0;
	    1: if (~x8_rdN)
		    next_agent = 0;
		else next_agent = 1;
	endcase

    always @(posedge sys_clk or negedge sys_rstN)
	if (~sys_rstN)
	    x8_lastN <= `CQ 0;
	else if (~state[0] & ~rdN)
	    x8_lastN <= `CQ next_agent;

    assign x8_actN = ~(state[3] & ~x8_lastN);
    assign f8_actN = ~(state[3] & x8_lastN);

    assign per_addr = (x8_lastN)? f8_addr : x8_addr;

endmodule

module irq_bit (sys_clk, sys_rstN, cause_wrN, in_dat, irqN_in, 

	cause);

    input sys_clk, sys_rstN, cause_wrN, in_dat, irqN_in; 
    output cause;

    reg cause;

    always @(posedge sys_clk or negedge sys_rstN)
        if (~sys_rstN)
            cause <= `CQ 0;
        else if (~cause_wrN & ~in_dat)
            cause <= `CQ 0;		// clear
        else if (~irqN_in)
            cause <= `CQ 1; 		// set

endmodule

