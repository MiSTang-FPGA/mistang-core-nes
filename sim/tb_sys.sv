// Runs the system for a few frames, then dumps the 256x240 frame buffer (palette indices) twice: buttons released, then button A held.
`timescale 1ns/1ps
module tb_sys;
    logic clk = 0, rst = 1; logic [7:0] pad = 0; logic vclk = 0; logic [15:0] vaddr = 0; logic [5:0] vq; logic [15:0] dbg_n;
    nes_sys dut (.clk(clk), .rst(rst), .pad(pad), .vclk(vclk), .vaddr(vaddr), .vq(vq), .dbg_n(dbg_n));
    always #23.2 clk = ~clk;
    integer f, i; integer frames_done = 0;
    task dump(input string name);
        f = $fopen(name, "w");
        for (i = 0; i < 61440; i = i + 1) $fdisplay(f, "%h", dut.fb[i]);
        $fclose(f);
    endtask
    logic [8:0] sl_q = 0;
    always @(posedge clk) begin sl_q <= dut.scanline; if (dut.scanline == 0 && sl_q != 0) frames_done <= frames_done + 1; end
    initial begin
        repeat (400) @(posedge clk); rst = 0;
        wait (frames_done == 7); dump("build/rtl_fb.txt");
        pad = 8'h01;
        wait (frames_done == 10); dump("build/rtl_fb_a.txt");
        $display("done, frames=%0d, dots/frame=%0d", frames_done, dbg_n);
        $finish;
    end
endmodule
