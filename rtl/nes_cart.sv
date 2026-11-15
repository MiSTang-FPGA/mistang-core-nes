// Replacement for the upstream cart_top (all mappers) with a plain NROM board (mapper 0): 16/32 KB PRG, 8 KB CHR ROM or RAM,
// fixed mirroring. Same ports and the same address-space conventions as upstream, so nes.v is used unchanged.
// flags bit 14 = vertical mirroring, bit 15 = CHR is RAM.
module cart_top (
	input             clk, ce, cpu_ce, paused, reset, vs_mode,
	input      [63:0] flags,
	input      [15:0] prg_ain,
	output reg [24:0] prg_aout,
	input             prg_read, prg_write,
	input       [7:0] prg_din,
	output reg  [7:0] prg_dout,
	input       [7:0] prg_from_ram,
	output reg        prg_allow, prg_bus_write, prg_conflict, has_savestate, prg_conflict_d0, has_flashsaves,
	input       [9:0] prg_mask, chr_mask,
	input             chr_ex, chr_read, chr_write,
	input       [7:0] chr_din,
	input      [13:0] chr_ain_orig, chr_ain_ex,
	output reg [21:0] chr_aout,
	output reg  [7:0] chr_dout,
	output reg        has_chr_dout, chr_allow, vram_a10, vram_ce,
	output reg [17:0] mapper_addr,
	input       [7:0] mapper_data_in,
	output reg  [7:0] mapper_data_out,
	output reg        mapper_prg_write, mapper_ovr, irq,
	input      [15:0] audio_in,
	output reg [15:0] audio,
	output reg  [1:0] diskside,
	input             fds_busy, fds_eject, fds_auto_eject,
	input       [1:0] max_diskside,
	input             fds_fast,
	input       [63:0]  SaveStateBus_Din,
	input       [ 9:0]  SaveStateBus_Adr,
	input               SaveStateBus_wren, SaveStateBus_rst, SaveStateBus_load,
	output      [63:0]  SaveStateBus_Dout,
	input         Savestate_MAPRAMactive,
	input  [12:0] Savestate_MAPRAMAddr,
	input         Savestate_MAPRAMRdEn, Savestate_MAPRAMWrEn,
	input  [7:0]  Savestate_MAPRAMWriteData,
	output [7:0]  Savestate_MAPRAMReadData
);
	assign SaveStateBus_Dout = 64'd0;
	assign Savestate_MAPRAMReadData = 8'd0;
	wire [13:0] chr_ain = chr_ain_orig;
	always @* begin
		prg_aout = {11'd0, prg_ain[13:0]};                          // 16 KB PRG ROM, mirrored through $8000-$FFFF
		prg_allow = prg_ain[15] && !prg_write;
		prg_dout = 8'hFF; prg_bus_write = 1'b0; prg_conflict = 1'b0; has_savestate = 1'b0; prg_conflict_d0 = 1'b0; has_flashsaves = 1'b0;
		chr_aout = {9'b10_0000_000, chr_ain[12:0]};
		chr_dout = 8'd0; has_chr_dout = 1'b0; chr_allow = flags[15];
		vram_ce = chr_ain[13];
		vram_a10 = flags[14] ? chr_ain[10] : chr_ain[11];
		mapper_addr = 18'd0; mapper_data_out = 8'd0; mapper_prg_write = 1'b0; mapper_ovr = 1'b0;
		irq = 1'b0; audio = {1'b0, audio_in[15:1]}; diskside = 2'd0;
		// 2 KB CPU RAM (bit 24 of the PRG address) and 2 KB nametable RAM (bit 20 of the CHR address) live in their own address regions
		chr_aout = vram_ce ? {11'b11_1010_0000_0, vram_a10, chr_ain[9:0]} : chr_aout;
		prg_aout = (prg_ain < 16'h2000) ? {14'h2000, prg_ain[10:0]} : prg_aout;     // bit 24 = 2 KB CPU RAM
		prg_allow = prg_allow || (prg_ain < 16'h2000);
	end
endmodule
