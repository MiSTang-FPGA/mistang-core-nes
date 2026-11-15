/**
 * NES master clock: 27 MHz * 4 / 5 = 21.6 MHz (the console runs 21.477 MHz, 0.6 % slower)
 */
module pll_nes(
        input  clock_in,
        output clock_out,
        output locked
    );

    rPLL #(
        .FCLKIN("27.0"),
        .IDIV_SEL(4), // -> PFD = 5.4 MHz
        .FBDIV_SEL(3), // -> 21.6 MHz before the output divider, VCO = 691.2 MHz
        .ODIV_SEL(32) // -> CLKOUT = 21.516 MHz
    ) pll (.CLKOUTP(), .CLKOUTD(), .CLKOUTD3(), .RESET(1'b0), .RESET_P(1'b0), .CLKFB(1'b0), .FBDSEL(6'b0), .IDSEL(6'b0), .ODSEL(6'b0), .PSDA(4'b0), .DUTYDA(4'b0), .FDLY(4'b0),
        .CLKIN(clock_in),
        .CLKOUT(clock_out),
        .LOCK(locked)
    );

endmodule
