module usbf_top_x1(
  clk_i,
  rst_i,
  phy_clk_pad_i,
  shift_reg_clk,
  shift_reg_load,
  core_datain0,
  core_dataout0
);

input clk_i;
input rst_i;
input phy_clk_pad_i;
input shift_reg_clk;
input shift_reg_load;
input core_datain0;
output core_dataout0;

// instance 0
reg[0:124] core_input0;
always @(posedge shift_reg_clk)
begin
  core_input0 <= {core_datain0, core_input0[0:123]};
end

wire[0:120] core_output0;
reg[0:120] reg_core_output0;
always @(posedge shift_reg_clk)
begin
  if (shift_reg_load)
    reg_core_output0 <= core_output0;
  else
    reg_core_output0 <= {1'b0, reg_core_output0[0:119]};
end
assign core_dataout0 = reg_core_output0[120];

usbf_top COPY0(
  .wb_we_i(core_input0[0]),
  .wb_stb_i(core_input0[1]),
  .wb_cyc_i(core_input0[2]),
  .resume_req_i(core_input0[3]),
  .TxReady_pad_i(core_input0[4]),
  .RxValid_pad_i(core_input0[5]),
  .RxActive_pad_i(core_input0[6]),
  .RxError_pad_i(core_input0[7]),
  .usb_vbus_pad_i(core_input0[8]),
  .wb_addr_i(core_input0[9:26]),
  .wb_data_i(core_input0[27:58]),
  .dma_ack_i(core_input0[59:74]),
  .DataIn_pad_i(core_input0[75:82]),
  .LineState_pad_i(core_input0[83:84]),
  .VStatus_pad_i(core_input0[85:92]),
  .sram_data_i(core_input0[93:124]),
  .wb_ack_o(core_output0[0]),
  .inta_o(core_output0[1]),
  .intb_o(core_output0[2]),
  .susp_o(core_output0[3]),
  .phy_rst_pad_o(core_output0[4]),
  .TxValid_pad_o(core_output0[5]),
  .XcvSelect_pad_o(core_output0[6]),
  .TermSel_pad_o(core_output0[7]),
  .SuspendM_pad_o(core_output0[8]),
  .VControl_Load_pad_o(core_output0[9]),
  .sram_re_o(core_output0[10]),
  .sram_we_o(core_output0[11]),
  .wb_data_o(core_output0[12:43]),
  .dma_req_o(core_output0[44:59]),
  .DataOut_pad_o(core_output0[60:67]),
  .OpMode_pad_o(core_output0[68:69]),
  .VControl_pad_o(core_output0[70:73]),
  .sram_adr_o(core_output0[74:88]),
  .sram_data_o(core_output0[89:120]),
  .clk_i(clk_i),
  .rst_i(rst_i),
  .phy_clk_pad_i(phy_clk_pad_i)
);

endmodule
