#!/usr/bin/env bash
# Verilator build + run of the system testbench (needs oss-cad-suite verilator and a g++/mingw32-make). Writes build/rtl_fb.txt and build/rtl_fb_a.txt.
cd "$(dirname "$0")/.."
U=upstream/rtl
verilator_bin.exe --binary --timing -Wno-fatal -Wno-lint -Wno-style -Wno-PROCASSWIRE -Wno-USEBEFOREDECL --top-module tb_sys -Mdir build/vl -o tb_nes -DSIM --x-assign 0 --x-initial 0 \
  sim/tb_sys.sv $U/regs_savestates.sv rtl/nes_sys.sv rtl/nes_cart.sv rtl/nes_stubs.sv rtl/t65_netlist.v rtl/t65_wrap.v $U/nes.v $U/apu.sv $U/ppu.sv $U/composite_board.sv $U/cheatcodes.sv
build/vl/tb_nes
