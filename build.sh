#!/usr/bin/env bash
# rom/prg.hex + rom/chr.hex hold the cartridge. rtl/t65_netlist.v is the upstream VHDL 6502 through GHDL (tools/ghdl_nes.sh).
# yosys (slang) -> nextpnr-himbaechel -> gowin_pack. usage: TOOLS=/path/oss-cad-suite ./build.sh
set -euo pipefail
cd "$(dirname "$0")"
TOOLS=${TOOLS:?set TOOLS to the oss-cad-suite directory}
export PATH="$TOOLS/bin:$TOOLS/lib:$PATH"
TOP=nes_top; OUT=build/$TOP; mkdir -p "$OUT"; U=upstream/rtl
SRCS="rtl/board/gowin_prims.v rtl/board/pll_hdmi.v rtl/board/pll_nes.v $U/regs_savestates.sv rtl/nes_stubs.sv rtl/nes_cart.sv $U/nes.v $U/apu.sv $U/ppu.sv $U/composite_board.sv $U/cheatcodes.sv rtl/nes_sys.sv rtl/nes_scale.sv rtl/top/nes_top.sv rtl/hdmi/*.sv"
SL="--compat vcs --allow-use-before-declare --relax-enum-conversions --allow-merging-ansi-ports --allow-dup-initial-drivers --ignore-assertions"
yosys -q -l "$OUT/yosys.log" -m slang -p "read_verilog rtl/t65_netlist.v rtl/t65_wrap.v; read_slang --extern-modules -I rtl $SL --top $TOP -D SYNTHESIS ${DEFS:-} $SRCS; hierarchy -top $TOP; synth_gowin -top $TOP -family gw2a -json $OUT/synth.json; tee -o $OUT/stat.txt stat"
rm -f "$OUT/pnr.json"
for SEED in ${SEEDS:-1 42 7 21 3 5 9 11}; do
  if nextpnr-himbaechel -q -l "$OUT/nextpnr.log" --json "$OUT/synth.json" --write "$OUT/pnr.json" --device GW2AR-LV18QN88C8/I7 --vopt family=GW2A-18C --vopt cst=rtl/board/tangnano20k.cst --pre-pack rtl/board/place.py --sdc rtl/board/clocks.sdc --vopt ioreg_in_iob --timing-allow-fail --seed $SEED; then
    echo "placed with seed $SEED"
    if grep -q "clk_p.*PASS" "$OUT/nextpnr.log" && grep -q "clk_n.*PASS" "$OUT/nextpnr.log"; then break; fi
    echo "seed $SEED: timing not met, trying the next seed"
  else echo "seed $SEED failed"; fi
done
[ -f "$OUT/pnr.json" ] || { echo "placement failed"; exit 1; }
gowin_pack -d GW2A-18C --mspi_as_gpio -o "$OUT/$TOP.fs" "$OUT/pnr.json"
ls -la "$OUT/$TOP.fs"; grep -E "Max frequency|LUT4|DFF|BSRAM" "$OUT/nextpnr.log" | tail -8
