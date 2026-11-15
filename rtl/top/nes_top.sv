// MiSTang NES core: 720p60 HDMI (256x240 at 3x3), S1 = button A, S2 = button B. Test cartridge in rom/prg.hex + rom/chr.hex.
module nes_top (
    input  logic       sys_clk, s1, s2,
    output logic [1:0] led,
    output logic       uart_tx,
    input  logic       uart_rx,
    output logic       tmds_clk_p, tmds_clk_n,
    output logic [2:0] tmds_d_p, tmds_d_n
);
    logic clk_p5, clk_p, hdmi_lock, clk_n, nes_lock;
    pll_hdmi u_pll (.clock_in(sys_clk), .clock_out(clk_p5), .locked(hdmi_lock));
    pll_nes  u_pll_n (.clock_in(sys_clk), .clock_out(clk_n), .locked(nes_lock));
    CLKDIV #(.DIV_MODE("5")) u_div5 (.CLKOUT(clk_p), .HCLKIN(clk_p5), .RESETN(hdmi_lock), .CALIB(1'b0));
    logic [3:0] rst_cnt = 0; logic reset = 1;
    always_ff @(posedge clk_p) begin
        if (!hdmi_lock) rst_cnt <= 0; else if (rst_cnt != 4'hf) rst_cnt <= rst_cnt + 1'd1;
        reset <= rst_cnt != 4'hf;
    end
    // NES reset: held for 255 clocks after its PLL locks (and a few more for the synchronisers)
    logic [7:0] n_cnt = 0; logic n_rst = 1;
    always_ff @(posedge clk_n) begin
        if (!nes_lock) n_cnt <= 0; else if (n_cnt != 8'hff) n_cnt <= n_cnt + 1'd1;
        n_rst <= (n_cnt != 8'hff);
    end
    logic s1_n, s2_n, s1_m, s2_m;
    always_ff @(posedge clk_n) begin s1_m <= s1; s1_n <= s1_m; s2_m <= s2; s2_n <= s2_m; end

    logic [10:0] cx; logic [9:0] cy; logic [23:0] rgb_v, rgb;
    logic [15:0] vaddr, dbg_n; logic [5:0] vq;
    nes_sys u_sys (.clk(clk_n), .rst(n_rst), .pad({6'b0, s2_n, s1_n}), .vclk(clk_p), .vaddr(vaddr), .vq(vq), .dbg_n(dbg_n));
    logic active;
    nes_scale u_vid (.clk(clk_p), .cx(cx), .cy(cy), .vaddr(vaddr), .vq(vq), .active(active), .rgb(rgb_v));
    always_ff @(posedge clk_p) rgb <= active ? rgb_v : {n_rst ? 8'h50 : 8'h00, (dbg_n != 0) ? 8'h50 : 8'h00, nes_lock ? 8'h50 : 8'h00}; // border = status: R reset still held, G a frame has completed, B NES PLL locked

    logic [2:0] tmds; logic tmds_clock; logic [15:0] silence [1:0];
    initial begin silence[0] = 0; silence[1] = 0; end
    logic [10:0] aud_div = 0; logic clk_audio = 0;
    always_ff @(posedge clk_p) if (aud_div == 11'd773) begin aud_div <= 0; clk_audio <= ~clk_audio; end else aud_div <= aud_div + 1'd1;
    hdmi #(.VIDEO_ID_CODE(4), .DVI_OUTPUT(0), .VIDEO_REFRESH_RATE(60.0), .AUDIO_RATE(48000), .AUDIO_BIT_WIDTH(16),
           .VENDOR_NAME({"MiSTang", 8'd0}), .PRODUCT_DESCRIPTION({"TangNano20K", 40'd0})) u_hdmi (
        .clk_pixel_x5(clk_p5), .clk_pixel(clk_p), .clk_audio(clk_audio), .reset(reset),
        .rgb(rgb), .audio_sample_word(silence), .tmds(tmds), .tmds_clock(tmds_clock),
        .cx(cx), .cy(cy), .frame_width(), .frame_height(), .screen_width(), .screen_height());
    TLVDS_OBUF u_obuf [3:0] (.I({tmds_clock, tmds}), .O({tmds_clk_p, tmds_d_p}), .OB({tmds_clk_n, tmds_d_n}));

    assign uart_tx = 1'b1;
    logic [24:0] hb = 0; always_ff @(posedge sys_clk) hb <= hb + 1'd1;
    assign led = {~hdmi_lock, ~hb[24]};
endmodule
