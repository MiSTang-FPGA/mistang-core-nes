#!/usr/bin/env python3
"""What the test cartridge must put on screen (256x240), computed from the PPU rules and the data tables in gen_cart.py - not from the RTL.
usage: ref_frame.py build/rtl_fb.txt [a]   compare the frame buffer dumped by sim/tb_sys.sv (palette indices; 'a' = button A held)
       ref_frame.py capture.png            compare a board capture (3x scaled, snapped to the 64-colour palette)"""
import sys, os, zlib, struct
here = os.path.dirname(os.path.abspath(__file__)); sys.path.insert(0, here)
import gen_cart as g
def frame(a=0):
    bd = g.BACKDROP[a]
    def bg(x, y):                                  # (colour index within palette, nes colour)
        tx, ty = x // 8, y // 8; t = ((ty * 32 + tx) & 255)
        i = g.tile_idx(t, x % 8, y % 8)
        at = g.attr((ty // 4) * 8 + tx // 4); q = ((ty // 2) & 1) * 2 + ((tx // 2) & 1); pal = (at >> (2 * q)) & 3
        return i, (bd if i == 0 else g.BGPAL[pal][i])
    f = []
    for y in range(240):
        for x in range(256):
            i, c = bg(x, y)
            for (sy, st, sa, sx) in g.SPRITES:         # lowest OAM index first
                if not (sx <= x < sx + 8 and sy + 1 <= y < sy + 9): continue
                col = x - sx; row = y - (sy + 1)
                if sa & 0x40: col = 7 - col
                if sa & 0x80: row = 7 - row
                si = g.tile_idx(st, col, row)
                if si == 0: continue
                if (sa & 0x20) and i != 0: break
                c = g.SPPAL[sa & 3][si]; break
            f.append(c)
    return f
def rgb(c): v = g.PAL[c & 63]; return (v >> 16, (v >> 8) & 255, v & 255)
def png(path, rows):
    h, w = len(rows), len(rows[0]); raw = b''.join(b'\0' + bytes(c for p in r for c in p) for r in rows)
    ch = lambda t, d: struct.pack('>I', len(d)) + t + d + struct.pack('>I', zlib.crc32(t + d) & 0xFFFFFFFF)
    open(path, 'wb').write(b'\x89PNG\r\n\x1a\n' + ch(b'IHDR', struct.pack('>IIBBBBB', w, h, 8, 2, 0, 0, 0)) + ch(b'IDAT', zlib.compress(raw)) + ch(b'IEND', b''))
if __name__ == '__main__':
    if sys.argv[1].endswith('.txt'):
        a = 1 if len(sys.argv) > 2 else 0
        ref = frame(a); rtl = [int(l, 16) if 'x' not in l.lower() else -1 for l in open(sys.argv[1]) if l.strip()]
        bad = [i for i in range(len(ref)) if i >= len(rtl) or rtl[i] != ref[i]]
        print('PASS: whole frame matches (61440 pixels)' if not bad else 'FAIL: %d of 61440 pixels differ, first at x=%d y=%d (rtl %s, ref %s)' % (len(bad), bad[0] % 256, bad[0] // 256, rtl[bad[0]], ref[bad[0]]))
        png(os.path.join(here, '..', 'docs', 'img', 'sim-nes%s.png' % ('-a' if a else '')), [[rgb(rtl[y * 256 + x]) if y * 256 + x < len(rtl) and rtl[y * 256 + x] >= 0 else (255, 0, 255) for x in range(256)] for y in range(240)])
        sys.exit(1 if bad else 0)
    import numpy as np
    from PIL import Image
    ref = np.array([rgb(c) for c in frame(0)], dtype=int).reshape(240, 256, 3)
    pal = np.array([rgb(i) for i in range(64)])
    im = np.array(Image.open(sys.argv[1]).convert('RGB')).astype(int)
    best = None
    for ox in range(246, 262):
        for oy in range(-3, 3):
            s = im[max(oy, 0) + 1:max(oy, 0) + 1 + 720:3, ox + 1:ox + 1 + 768:3]
            if s.shape[:2] != (240, 256): continue
            idx = ((s[:, :, None, :] - pal[None, None, :, :]) ** 2).sum(axis=3).argmin(axis=2)
            bad = int((pal[idx] != ref).any(axis=2).sum())
            if best is None or bad < best[0]: best = (bad, ox, oy)
    print('pixels differing from the reference (of 61440): %d at capture offset %s' % (best[0], best[1:]))
