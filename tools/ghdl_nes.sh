#!/usr/bin/env bash
# T65 (6502, VHDL) -> Verilog netlist rtl/t65_netlist.v through GHDL. GHDL=/e/tools/ghdl/bin/ghdl.exe
set -euo pipefail
cd "$(dirname "$0")/.."
G=${GHDL:-ghdl}; W=$(mktemp -d); O="--std=08 -frelaxed -fsynopsys --workdir=$W"
U=upstream/rtl; sed 's/entity work.eReg_SavestateV/entity work.eReg_T65/' $U/t65/T65.vhd > $W/T65_ss.vhd
$G -a $O $U/bus_savestates.vhd rtl/shim/ereg_t65.vhd $U/t65/T65_Pack.vhd $U/t65/T65_MCode.vhd $U/t65/T65_ALU.vhd $W/T65_ss.vhd
$G synth $O --out=verilog T65 > rtl/t65_netlist.v
sed -i "s/\bint\b/int_s/g; s/\bpriority\b/priority_s/g; s/\bbreak\b/break_s/g; s/^module T65$/module T65_core/" rtl/t65_netlist.v
