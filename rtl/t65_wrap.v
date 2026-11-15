// The GHDL netlist keeps the VHDL port spelling (Mode, Res_n ...); NES_MiSTer instantiates T65 with lower-case names, VHDL being
// case-insensitive. Abort_n and SO_n have VHDL defaults that the netlist turns into plain inputs, so they are tied inactive here.
module T65 (
	input [1:0] mode, input BCD_en, input res_n, input pwr_n, input clk, input enable, input rdy, input IRQ_n, input NMI_n,
	output R_W_n, output [15:0] A, input [7:0] DI, output [7:0] DO, output Instrnew,
	input [63:0] SaveStateBus_Din, input [9:0] SaveStateBus_Adr, input SaveStateBus_wren, input SaveStateBus_rst, input SaveStateBus_load,
	output [63:0] SaveStateBus_Dout);
	wire [23:0] a24;
	assign A = a24[15:0];
	T65_core core (.Mode(mode), .BCD_en(BCD_en), .Res_n(res_n), .Pwr_n(pwr_n), .Enable(enable), .Clk(clk), .Rdy(rdy), .Abort_n(1'b1),
		.IRQ_n(IRQ_n), .NMI_n(NMI_n), .SO_n(1'b1), .R_W_n(R_W_n), .Sync(), .EF(), .MF(), .XF(), .ML_n(), .VP_n(), .VDA(), .VPA(),
		.A(a24), .DI(DI), .DO(DO), .Regs(), .NMI_ack(), .Instrnew(Instrnew),
		.SaveStateBus_Din(SaveStateBus_Din), .SaveStateBus_Adr(SaveStateBus_Adr), .SaveStateBus_wren(SaveStateBus_wren),
		.SaveStateBus_rst(SaveStateBus_rst), .SaveStateBus_load(SaveStateBus_load), .SaveStateBus_Dout(SaveStateBus_Dout));
endmodule
