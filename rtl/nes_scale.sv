// Scaler for the 256x240 picture: 3x3 = 768x720 centred in 1280x720 (x 256..1023, all 720 lines). Same pipeline as sms_scale.
module nes_scale #(parameter PAL_FILE = "rom/palette.hex") (
    input  logic        clk,
    input  logic [10:0] cx,
    input  logic [9:0]  cy,
    output logic [15:0] vaddr,
    input  logic [5:0]  vq,
    output logic        active,
    output logic [23:0] rgb
);
    logic [23:0] pal [0:63];
    initial $readmemh(PAL_FILE, pal);
    logic [15:0] rowbase; logic [1:0] ys; logic vact;
    logic [1:0] sx; logic [8:0] xi; logic hrun, a0, a1;
    always_ff @(posedge clk) begin
        if (cx == 11'd0) begin
            if (cy == 10'd0) begin vact <= 1'b1; ys <= 0; rowbase <= 0; end
            else if (vact) begin
                if (ys == 2'd2) begin ys <= 0; rowbase <= rowbase + 16'd256; end
                else ys <= ys + 2'd1;
            end
        end
        if (cx == 11'd252) begin hrun <= 1'b1; sx <= 0; xi <= 0; vaddr <= rowbase; end
        else if (hrun) begin
            if (sx == 2'd2) begin
                sx <= 0;
                if (xi == 9'd255) hrun <= 1'b0;
                else begin xi <= xi + 9'd1; vaddr <= rowbase + {7'd0, xi} + 16'd1; end
            end else sx <= sx + 2'd1;
        end
        a0 <= hrun && vact; a1 <= a0; active <= a1;
        rgb <= pal[vq];
    end
endmodule
