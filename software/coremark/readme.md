# Coremark

Some experiments...

#### RAM = external SRAM

* -O1 plus all -O2/O3 that are ok (skip -fschedule-insns -fschedule-insns2; **bug?**)

```
A2P> coremark
Calling coremark...

2K performance run parameters for coremark.
CoreMark Size    : 666
Total ticks      : 1152638655
Total time (secs): 11
Iterations/Sec   : 181
Iterations       : 2000
Compiler version : GCC9.3.0
Compiler flags   :
Memory location  : STACK
seedcrc          : 0xe9f5
[0]crclist       : 0xe714
[0]crcmatrix     : 0x1fd7
[0]crcstate      : 0x8e3a
[0]crcfinal      : 0x4983
Correct operation validated. See README.md for run and reporting rules.
```

#### RAM = BRAM

```
A2P> coremark
Calling coremark...

2K performance run parameters for coremark.
CoreMark Size    : 666
Total ticks      : 2362015571
Total time (secs): 23
Iterations/Sec   : 217
Iterations       : 5000
Compiler version : GCC9.3.0
Compiler flags   :
Memory location  : STACK
seedcrc          : 0xe9f5
[0]crclist       : 0xe714
[0]crcmatrix     : 0x1fd7
[0]crcstate      : 0x8e3a
[0]crcfinal      : 0xbd59
Correct operation validated. See README.md for run and reporting rules.


rc=0

A2P> mem_list
Available memory regions:
ROM       0x00000000 0x10000
SRAM      0x00100000 0x10000
CSR       0xfff00000 0x10000
```

#### cr_bypass=false

```
A2P> coremark
Calling coremark...

2K performance run parameters for coremark.
CoreMark Size    : 666
Total ticks      : 2848000072
Total time (secs): 28
Iterations/Sec   : 178
Iterations       : 5000
Compiler version : GCC9.3.0
Compiler flags   :
Memory location  : STACK
seedcrc          : 0xe9f5
[0]crclist       : 0xe714
[0]crcmatrix     : 0x1fd7
[0]crcstate      : 0x8e3a
[0]crcfinal      : 0xbd59
Correct operation validated. See README.md for run and reporting rules.
```

#### all byps=false

* fascinating! unaligned excp - must be riddled with bugs...


```
A2P> coremark
Calling coremark...

Unhandled exception: 00000006
  SRR0: 00004FC0
  SRR1: 00000000
   DAR: 00000001
 DSISR: 00000000


A2P> mem_read 0x4f00 256
Memory dump:
0x00004f00  3b a0 00 00 4b ff fb 04 3b a0 00 00 63 bd ff ff  ;...K...;...c...
0x00004f10  3f 00 00 10 4b ff fa f4 60 00 00 00 60 00 00 00  ?...K...`...`...
0x00004f20  94 21 ff c0 7c 08 02 a6 90 01 00 44 93 c1 00 38  .!..|......D...8
0x00004f30  39 20 ff ff 7c fe 3b 78 51 3e 60 26 7c 6b 1b 79  9 ..|.;xQ>`&|k.y
0x00004f40  41 82 05 a4 92 81 00 10 92 a1 00 14 92 c1 00 18  A...............
0x00004f50  92 e1 00 1c 93 01 00 20 93 21 00 24 93 41 00 28  ....... .!.$.A.(
0x00004f60  93 61 00 2c 93 81 00 30 93 a1 00 34 93 e1 00 3c  .a.,...0...4...<
0x00004f70  7c d8 33 78 54 fc 04 3e 55 7d 08 3c 3a e5 ff fe  |.3xT..>U}.<:...
0x00004f80  7c d7 ea 14 1f 2b ff fe 7c c8 33 78 38 a0 00 00  |....+..|.3x8...
0x00004f90  1c 0b ff fc 60 00 00 00 60 00 00 00 60 00 00 00  ....`...`...`...
0x00004fa0  7c 79 42 14 7c 69 1b 78 48 00 00 18 60 00 00 00  |yB.|i.xH...`...
0x00004fb0  60 00 00 00 60 00 00 00 60 00 00 00 60 00 00 00  `...`...`...`...
0x00004fc0  a5 49 00 02 7d 5c 52 14 b1 49 00 00 7c 08 48 40  .I..}\R..I..|.H@
0x00004fd0  40 82 ff f0 3b e5 00 01 7d 00 18 50 7c 0b f8 40  @...;...}..P|..@
0x00004fe0  41 82 00 10 7f e5 fb 78 4b ff ff b8 60 00 00 00  A......xK...`...
0x00004ff0  57 fb 10 3a 3a c4 ff fc 7e da b3 78 7e cb b3 78  W..::...~..x~..x
```

```
00004f20 <matrix_test>:
                ...
    4fc0:	a5 49 00 02 	lhzu    r10,2(r9)
```
