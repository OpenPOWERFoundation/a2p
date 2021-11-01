# Simulation

* verilator and pyverilator (with mods); uart+terminal

* simulator...

```
wtf@GatorCountry:~/projects/a2p/sim$ simcmod -c 100000000
removed &: /clk12/
removed &: /serial_tx/
removed &: /serial_rx/
removed &: /user_led0/
removed &: /user_led1/
removed &: /user_btn0/
removed &: /user_btn1/
removed &: /pmod0/
removed &: /pmod1/
removed &: /digital43/
make: Entering directory '/home/wtf/projects/a2p/sim/obj_dir'
ccache g++  -I.  -MMD -I/home/wtf/projects/verilator/include -I/home/wtf/projects/verilator/include/vltstd -DVM_COVERAGE=0 -DVM_SC=0 -DVM_TRACE=1 -DVM_TRACE_FST=0 -faligned-new -fcf-protection=none -Wno-bool-operation -Wno-sign-compare -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-parameter -Wno-unused-variable -Wno-shadow     -fPIC -shared --std=c++11 -DVL_USER_FINISH  -std=c++14 -Os -c -o pyverilator_wrapper.o ../obj_dir/pyverilator_wrapper.cpp
g++ -fPIC -shared pyverilator_wrapper.o uartsim.o verilated.o verilated_dpi.o verilated_vcd_c.o Vcmod7__ALL.a      -o Vcmod7
make: Leaving directory '/home/wtf/projects/a2p/sim/obj_dir'
Connecting to UART on port 8675...
Listening on port 8675
Config=00000364
Do this then come back and hit enter: ./litex_term.py socket://localhost:8675
io
Input   clk12      1'h0
Output  digital43  1'h0
Input   pmod0      1'h0
Input   pmod1      1'h0
Input   serial_rx  1'h0
Output  serial_tx  1'h0
Input   user_btn0  1'h0
Input   user_btn1  1'h0
Output  user_led0  1'h0
Output  user_led1  1'h0

internals
<empty Collection object>

0000000000[         0]  pys--. : Initializing seed to 0x73a18d0
0000004320[       432]  pys--. : LED0 changed to 1'h1
0000005180[       518]  pys--. : LED0 changed to 1'h0
0000005180[       518]  pys--. : LED1 changed to 1'h1
0000006580[       658]  pys--. : LED0 changed to 1'h1
0040000000[   4000000]  pys--. :    4000000 cycles run.
0080000000[   8000000]  pys--. :    8000000 cycles run.
0120000000[  12000000]  pys--. :   12000000 cycles run.
0160000000[  16000000]  pys--. :   16000000 cycles run.
0200000000[  20000000]  pys--. :   20000000 cycles run.
0240000000[  24000000]  pys--. :   24000000 cycles run.
0280000000[  28000000]  pys--. :   28000000 cycles run.
0320000000[  32000000]  pys--. :   32000000 cycles run.
0360000000[  36000000]  pys--. :   36000000 cycles run.
0400000000[  40000000]  pys--. :   40000000 cycles run.
0440000000[  44000000]  pys--. :   44000000 cycles run.
0480000000[  48000000]  pys--. :   48000000 cycles run.
0520000000[  52000000]  pys--. :   52000000 cycles run.
0560000000[  56000000]  pys--. :   56000000 cycles run.
0600000000[  60000000]  pys--. :   60000000 cycles run.
0640000000[  64000000]  pys--. :   64000000 cycles run.
0680000000[  68000000]  pys--. :   68000000 cycles run.
0720000000[  72000000]  pys--. :   72000000 cycles run.
0760000000[  76000000]  pys--. :   76000000 cycles run.
0800000000[  80000000]  pys--. :   80000000 cycles run.
0840000000[  84000000]  pys--. :   84000000 cycles run.
0880000000[  88000000]  pys--. :   88000000 cycles run.
0920000000[  92000000]  pys--. :   92000000 cycles run.
0960000000[  96000000]  pys--. :   96000000 cycles run.
0999999960[  99999996]  pys--. : Quiescing...
1000000000[ 100000000]  pys--. :  100000000 cycles run.


Final State
Model       : cmod7.v


Seed:          073A18D0
Cycles:        100000001
Errors:        0

You has opulence.

Done.
```

* console...

```
wtf@GatorCountry:~/projects/a2p/sim$ python3 ./litex_term.py  socket://localhost:8675

A2P POWAflight

SRAM OK.
Copying ROM to RAM...
Jumping to main()...
--============== Boot ==================--
No extended boot medium found

--============= Console ================--

A2P> mem_list
Available memory regions:
ROM       0x00000000 0x10000
SRAM      0x00010000 0x10000
MAIN_RAM  0x80000000 0x100
CSR       0xfff00000 0x10000

A2P> mem_read 0x0 128
Memory dump:
0x00000000  48 00 10 00 00 00 00 00 00 00 00 00 00 00 00 00  H...............
0x00000010  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
0x00000020  00 00 00 00 48 00 00 1c 60 00 00 00 60 00 00 00  ....H...`...`...
0x00000030  60 00 00 00 60 00 00 00 60 00 00 00 60 00 00 00  `...`...`...`...
0x00000040  00 00 00 00 00 00 ff ff 00 00 00 00 00 00 00 00  ................
0x00000050  ff ff ff ff f7 ff ff ff ff f0 30 00 ff ff ff ff  ..........0.....
0x00000060  ff f0 48 00 ff f0 10 00 ff ff ff ff ff f0 18 00  ..H.............
0x00000070  ff ff ff ff 08 67 53 09 60 00 00 00 60 00 00 00  .....gS.`...`...

A2P> mem_read 0x10000 512
Memory dump:
0x00010000  00 00 4f 6c 00 00 d8 20 00 00 d8 2c 00 00 00 04  ..Ol... ...,....
0x00010010  00 00 21 0c 00 00 d8 c4 00 00 d8 d0 00 00 00 04  ..!.............
0x00010020  00 00 22 60 00 00 d9 ac 00 00 d9 b8 00 00 00 04  .."`............
0x00010030  00 00 24 74 00 00 da 1c 00 00 da 28 00 00 00 04  ..$t.......(....
0x00010040  00 00 25 50 00 00 da d0 00 00 da dc 00 00 00 02  ..%P............
0x00010050  00 00 25 94 00 00 db 40 00 00 db 4c 00 00 00 02  ..%....@...L....
0x00010060  00 00 26 9c 00 00 db a4 00 00 db b0 00 00 00 02  ..&.............
0x00010070  00 00 28 14 00 00 dc 20 00 00 dc 2c 00 00 00 02  ..(.... ...,....
0x00010080  00 00 2a 94 00 00 dd 60 00 00 dd 64 00 00 00 02  ..*....`...d....
0x00010090  00 00 3e 20 00 00 e1 a4 00 00 e1 b4 00 00 00 04  ..> ............
0x000100a0  00 00 40 98 00 00 e2 40 00 00 e2 4c 00 00 00 04  ..@....@...L....
0x000100b0  00 00 44 30 00 00 e2 c8 00 00 e2 d0 00 00 00 04  ..D0............
0x000100c0  61 62 62 62 61 62 61 62 61 61 62 63 63 61 62 61  abbbababaabccaba
0x000100d0  62 63 61 63 62 63 62 63 62 61 62 62 61 62 63 62  bcacbcbcbabbabcb
0x000100e0  61 62 63 61 62 63 62 62 63 62 62 61 63 00 00 00  abcabcbbcbbac...
0x000100f0  00 00 e5 68 00 00 e5 70 00 00 e5 78 00 00 e5 80  ...h...p...x....
0x00010100  00 00 e5 90 00 00 00 00 00 00 00 00 00 00 00 00  ................
0x00010110  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
0x00010120  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
0x00010130  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
0x00010140  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
0x00010150  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
0x00010160  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
0x00010170  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
0x00010180  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
0x00010190  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
0x000101a0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
0x000101b0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
0x000101c0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
0x000101d0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
0x000101e0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
0x000101f0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................

A2P> embench slre
Start: 00956BE1
 Stop: 0202AD69
Execution cycles =  23937416

A2P> embench statemate
Starting...
Start: 0258585D
 Stop: 0348B33F
Execution cycles =  15751906
```
