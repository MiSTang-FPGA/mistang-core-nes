#!/usr/bin/env python3
"""Original NES test cartridge (mapper 0, 16 KB PRG, 8 KB CHR ROM, vertical mirroring), written for this port.
It exercises the CPU, the RAM, OAM DMA ($4014), the PPU data port, nametable + attribute + palette RAM, sprites with flips and
the joypad port: the NMI handler reads button A and switches the backdrop colour. tools/ref_frame.py draws the expected picture from
the data tables below without using any of the RTL.
writes rom/prg.hex, rom/chr.hex, rom/palette.hex and rom/test.nes"""
import os
here = os.path.dirname(os.path.abspath(__file__)); rom = os.path.join(here, '..', 'rom'); os.makedirs(rom, exist_ok=True)

# ---- data shared with ref_frame.py ----
def tile_idx(t, x, r):                       # colour index (0..3) of pixel x, row r of tile t
    return (((x ^ r) + t) >> ((t >> 4) & 1)) & 3
BGPAL = [[0x0F, 0x11, 0x2A, 0x30], [0x0F, 0x16, 0x27, 0x38], [0x0F, 0x1C, 0x24, 0x3A], [0x0F, 0x13, 0x28, 0x35]]
SPPAL = [[0x0F, 0x21, 0x16, 0x30], [0x0F, 0x1A, 0x25, 0x37], [0x0F, 0x12, 0x2C, 0x38], [0x0F, 0x14, 0x27, 0x3D]]
BACKDROP = [0x0F, 0x01]                      # index = joypad A bit
def attr(i): return (i * 5 + (i >> 3)) & 0xFF
SPRITES = [(20, 1, 0x00, 24), (44, 17, 0x01, 200), (68, 33, 0x02, 40), (92, 49, 0x03, 120), (116, 65, 0x40, 90), (140, 81, 0x80, 160),
           (164, 97, 0xC1, 60), (188, 113, 0x22, 220)]      # (y, tile, attr, x); attr bit5 = behind background, bit6/7 = flips

# ---- tiny 6502 assembler ----
code = bytearray(); labels = {}; fix = []
BASE = 0xC000
def L(n): labels[n] = BASE + len(code)
def b(*v): code.extend(v)
def w(op, a):
    code.append(op)
    if isinstance(a, str): fix.append((len(code), a, 'a')); code.extend([0, 0])
    else: code.extend([a & 255, a >> 8])
def rel(op, n): code.append(op); fix.append((len(code), n, 'r')); code.append(0)
def lo(n): fix.append((len(code), n, 'lo')); code.append(0)
SEI = lambda: b(0x78); CLD = lambda: b(0xD8); TXS = lambda: b(0x9A); INX = lambda: b(0xE8); TXA = lambda: b(0x8A); TAX = lambda: b(0xAA)
DEY = lambda: b(0x88); RTI = lambda: b(0x40)
LDAi = lambda v: b(0xA9, v); LDXi = lambda v: b(0xA2, v); LDYi = lambda v: b(0xA0, v); ANDi = lambda v: b(0x29, v); CPXi = lambda v: b(0xE0, v)
LDA = lambda a: w(0xAD, a); STA = lambda a: w(0x8D, a); STX = lambda a: w(0x8E, a); BIT = lambda a: w(0x2C, a)
LDAx = lambda a: w(0xBD, a); STAx = lambda a: w(0x9D, a); JMP = lambda a: w(0x4C, a)
BNE = lambda n: rel(0xD0, n); BPL = lambda n: rel(0x10, n); BEQ = lambda n: rel(0xF0, n)

L('reset'); SEI(); CLD(); LDXi(0x40); STX(0x4017); LDXi(0xFF); TXS(); INX(); STX(0x2000); STX(0x2001); STX(0x4010)
L('v1'); BIT(0x2002); BPL('v1')
L('v2'); BIT(0x2002); BPL('v2')
LDA(0x2002); LDAi(0x3F); STA(0x2006); LDAi(0); STA(0x2006)
LDXi(0); L('pl'); LDAx('paltab'); STA(0x2007); INX(); CPXi(32); BNE('pl')
LDAi(0x20); STA(0x2006); LDAi(0); STA(0x2006)
LDYi(3); L('n1'); LDXi(0); L('n2'); STX(0x2007); INX(); BNE('n2'); DEY(); BNE('n1')
LDXi(0); L('n3'); STX(0x2007); INX(); CPXi(192); BNE('n3')
LDXi(0); L('at'); LDAx('atttab'); STA(0x2007); INX(); CPXi(64); BNE('at')
LDXi(0); L('oc'); LDAx('oamtab'); STAx(0x0200); INX(); BNE('oc')
LDAi(2); STA(0x4014)
LDAi(0x80); STA(0x2000); LDAi(0); STA(0x2005); STA(0x2005); LDAi(0x1E); STA(0x2001)
L('main'); JMP('main')
L('nmi'); LDAi(1); STA(0x4016); LDAi(0); STA(0x4016); LDA(0x4016); ANDi(1); TAX(); LDA(0x2002)
LDAi(0x3F); STA(0x2006); LDAi(0); STA(0x2006); LDAx('bdtab'); STA(0x2007)
LDAi(0x80); STA(0x2000); LDAi(0); STA(0x2005); STA(0x2005); RTI()
L('irq'); RTI()
tabs = {}
def table(n, data): tabs[n] = BASE + len(code); code.extend(data)
table('paltab', bytes(BGPAL[0] + BGPAL[1] + BGPAL[2] + BGPAL[3] + SPPAL[0] + SPPAL[1] + SPPAL[2] + SPPAL[3]))
table('atttab', bytes(attr(i) for i in range(64)))
oam = bytearray([0xFF] * 256)
for n, (y, t, a, x) in enumerate(SPRITES): oam[n * 4:n * 4 + 4] = bytes([y, t, a, x])
table('oamtab', bytes(oam))
table('bdtab', bytes(BACKDROP))
labels.update(tabs)
for pos, n, kind in fix:
    a = labels[n]
    if kind == 'a': code[pos] = a & 255; code[pos + 1] = a >> 8
    elif kind == 'r':
        d = a - (BASE + pos + 1)
        assert -128 <= d < 128, n
        code[pos] = d & 255
prg = bytearray([0xFF] * 16384); prg[:len(code)] = code
prg[0x3FFA:0x3FFC] = bytes([labels['nmi'] & 255, labels['nmi'] >> 8])
prg[0x3FFC:0x3FFE] = bytes([labels['reset'] & 255, labels['reset'] >> 8])
prg[0x3FFE:0x4000] = bytes([labels['irq'] & 255, labels['irq'] >> 8])
chr_ = bytearray(8192)
for t in range(256):
    for r in range(8):
        p0 = p1 = 0
        for x in range(8):
            i = tile_idx(t, x, r); p0 |= (i & 1) << (7 - x); p1 |= (i >> 1) << (7 - x)
        chr_[t * 16 + r] = p0; chr_[t * 16 + 8 + r] = p1

PAL = [0x545454, 0x001E74, 0x081090, 0x300088, 0x440064, 0x5C0030, 0x540400, 0x3C1800, 0x202A00, 0x083A00, 0x004000, 0x003C00, 0x00323C, 0, 0, 0,
       0x989698, 0x084CC4, 0x3032EC, 0x5C1EE4, 0x8814B0, 0xA01464, 0x982220, 0x783C00, 0x545A00, 0x287200, 0x087C00, 0x007628, 0x006678, 0, 0, 0,
       0xECEEEC, 0x4C9AEC, 0x787CEC, 0xB062EC, 0xE454EC, 0xEC58B4, 0xEC6A64, 0xD48820, 0xA0AA00, 0x74C400, 0x4CD020, 0x38CC6C, 0x38B4CC, 0x3C3C3C, 0, 0,
       0xECEEEC, 0xA8CCEC, 0xBCBCEC, 0xD4B2EC, 0xECAEEC, 0xECAED4, 0xECB4B0, 0xE4C490, 0xCCD278, 0xB4DE78, 0xA8E290, 0x98E2B4, 0xA0D6E4, 0xA0A2A0, 0, 0]
if __name__ == '__main__':
    open(os.path.join(rom, 'prg.hex'), 'w', newline='').write(''.join('%02x\n' % v for v in prg))
    open(os.path.join(rom, 'chr.hex'), 'w', newline='').write(''.join('%02x\n' % v for v in chr_))
    open(os.path.join(rom, 'palette.hex'), 'w', newline='').write(''.join('%06x\n' % v for v in PAL))
    open(os.path.join(rom, 'test.nes'), 'wb').write(b'NES\x1a\x01\x01\x01\x00' + bytes(8) + bytes(prg) + bytes(chr_))
    print('code %d bytes, reset=%04x nmi=%04x' % (len(code), labels['reset'], labels['nmi']))
