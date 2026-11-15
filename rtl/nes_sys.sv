// MiSTang NES: the upstream NES_MiSTer core (nes.v, PPU, APU, DMA, T65 through GHDL) on a plain NROM cartridge board, with the
// memories the MiSTer top level kept in SDRAM held in block RAM. clk is the 21.5 MHz master clock (the real console runs 21.477 MHz).
module nes_sys #(parameter PRG_FILE = "rom/prg.hex", CHR_FILE = "rom/chr.hex") (
    input  logic        clk, rst,
    input  logic [7:0]  pad,                 // {right,left,down,up,start,select,B,A}
    input  logic        vclk,
    input  logic [15:0] vaddr,
    output logic [5:0]  vq,
    output logic [15:0] dbg_n
);
    logic [7:0] prg [0:16383]; logic [7:0] chr [0:8191];
    initial begin $readmemh(PRG_FILE, prg); $readmemh(CHR_FILE, chr); end
    (* ram_style = "block" *) logic [7:0] ram [0:2047]; (* ram_style = "block" *) logic [7:0] ciram [0:2047];

    logic [24:0] cpumem_addr; logic cpumem_read, cpumem_write; logic [7:0] cpumem_dout; wire [7:0] cpumem_din;
    logic [21:0] ppumem_addr; logic ppumem_read, ppumem_write; logic [7:0] ppumem_dout; wire [7:0] ppumem_din;
    logic [7:0] ram_q, prg_q, ci_q, chr_q; logic sel_ram, sel_ci;
    always_ff @(posedge clk) begin
        if (cpumem_write && cpumem_addr[24]) ram[cpumem_addr[10:0]] <= cpumem_dout;
        ram_q <= ram[cpumem_addr[10:0]];
        prg_q <= prg[cpumem_addr[13:0]];
        sel_ram <= cpumem_addr[24];
        if (ppumem_write && ppumem_addr[20]) ciram[ppumem_addr[10:0]] <= ppumem_dout;
        ci_q <= ciram[ppumem_addr[10:0]];
        chr_q <= chr[ppumem_addr[12:0]];
        sel_ci <= ppumem_addr[20];
    end
    assign cpumem_din = sel_ram ? ram_q : prg_q;
    assign ppumem_din = sel_ci ? ci_q : chr_q;

    // joypad 1: serial shift register, strobe latches the buttons, the read pulse shifts on its falling edge
    logic [2:0] joy_out; logic [1:0] joy_clk; logic [7:0] sh = 0; logic jc_q = 0;
    always_ff @(posedge clk) begin
        jc_q <= joy_clk[0];
        if (joy_out[0]) sh <= pad;
        else if (jc_q && !joy_clk[0]) sh <= {1'b1, sh[7:1]};
    end
    wire j1 = joy_out[0] ? pad[0] : sh[0];

    logic [5:0] color; logic [8:0] cycle, scanline; logic hs, vs, hb, vb;
    NES u_nes (
        .clk(clk), .reset_nes(rst), .ppu_rst_behavior(1'b0), .cold_reset(rst), .pausecore(1'b0), .corepaused(), .sys_type(2'b00),
        .vs_dip_switches(8'd0), .nes_div(), .mapper_flags(64'h0000_0000_0000_4000), .sample(), .color(color),
        .joypad_clock(joy_clk), .joypad_out(joy_out), .joypad1_data({4'b0, j1}), .joypad2_data(5'd0),
        .fds_busy(1'b0), .fds_eject(1'b0), .fds_auto_eject(1'b0), .max_diskside(2'd0), .fds_fast(1'b0), .diskside(),
        .audio_channels(5'h1F), .ex_sprites(1'b0), .mask(2'd0), .dejitter_timing(1'b1),
        .cpumem_addr(cpumem_addr), .cpumem_read(cpumem_read), .cpumem_write(cpumem_write), .cpumem_dout(cpumem_dout), .cpumem_din(cpumem_din),
        .ppumem_addr(ppumem_addr), .ppumem_read(ppumem_read), .ppumem_write(ppumem_write), .ppumem_dout(ppumem_dout), .ppumem_din(ppumem_din),
        .refresh(), .prg_mask(21'd0), .chr_mask(20'd0),
        .bram_addr(), .bram_din(8'd0), .bram_dout(), .bram_write(), .bram_override(),
        .cycle(cycle), .scanline(scanline), .int_audio(1'b1), .ext_audio(1'b0), .apu_ce(),
        .gg(1'b1), .gg_code(129'd0), .gg_avail(), .gg_reset(rst), .emphasis(), .save_written(), .mapper_has_flashsaves(), .debug_dots(1'b0),
        .mapper_has_savestate(), .increaseSSHeaderCount(1'b0), .save_state(1'b0), .load_state(1'b0), .savestate_number(2'd0),
        .sleep_savestate(), .state_loaded(),
        .hsync(hs), .hblank(hb), .vsync(vs), .vblank(vb), .composite_a(), .composite_b(),
        .Savestate_SDRAMAddr(), .Savestate_SDRAMRdEn(), .Savestate_SDRAMWrEn(), .Savestate_SDRAMWriteData(), .Savestate_SDRAMReadData(8'd0),
        .SaveStateExt_Din(), .SaveStateExt_Adr(), .SaveStateExt_wren(), .SaveStateExt_rst(), .SaveStateExt_Dout(64'd0), .SaveStateExt_load(),
        .SAVE_out_Din(), .SAVE_out_Dout(64'd0), .SAVE_out_Adr(), .SAVE_out_rnw(), .SAVE_out_ena(), .SAVE_out_be(), .SAVE_out_done(1'b0));

    // frame buffer {y, x} = 256 x 240 x 6 bit palette index. The PPU advances `cycle` once per dot; the colour output belongs to the dot
    // `PIPE` dots earlier (calibrated against the reference picture in simulation).
    localparam integer PIPE = 2;
    logic [5:0] fb [0:65535];
    logic [8:0] cy_q; logic [8:0] xx; logic [15:0] npix;
    always_ff @(posedge clk) begin
        cy_q <= cycle;
        if (cycle != cy_q) begin
            xx = cycle - PIPE;
            if (xx < 9'd256 && scanline < 9'd240) fb[{scanline[7:0], xx[7:0]}] <= color;
            if (scanline == 9'd0 && cycle == 9'd1) begin dbg_n <= npix; npix <= 0; end else npix <= npix + 16'd1;
        end
    end
    always_ff @(posedge vclk) vq <= fb[vaddr];
endmodule
