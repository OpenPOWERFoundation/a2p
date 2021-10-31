# Litex SOC

```a2p_cmod7.py``` is a sample SOC for Digilent Cmod A7: https://digilent.com/reference/programmable-logic/cmod-a7/start

   * 64K ROM (BRAM)
   * 512K RAM (Async SRAM on board)
   * UART for console

```rom.init``` is an asm test nanokernel plus Litex BIOS.

Generate SOC verilog and create bitstream...

```
make -c  # copy rom.init, build, program
make     # build, program
make -p  # program
```

Start terminal...

```
lxterm /dev/ttyUSB1 # or whatever
```

```
A2P POWAflight

SRAM OK.
Copying ROM to RAM...
Jumping to main()...

        __   _ __      _  __
       / /  (_) /____ | |/_/
      / /__/ / __/ -_)>  <
     /____/_/\__/\__/_/|_|
   Build your hardware, easily!

 (c) Copyright 2012-2021 Enjoy-Digital
 (c) Copyright 2007-2015 M-Labs

 BIOS built on Oct 30 2021 08:02:58
 BIOS CRC failed (expected 00000000, got 3f6a3f1d)
 The system will continue, but expect problems.

 Migen git sha1: 27dbf03
 LiteX git sha1: 78c1751c

--=============== SoC ==================--
CPU:		A2P_WB @ 100MHz
BUS:		WISHBONE 32-bit @ 4GiB
CSR:		32-bit data
ROM:		64KiB
SRAM:		512KiB


--============== Boot ==================--
Booting from serial...
Press Q or ESC to abort boot completely.
sL5DdSMmkekro
Timeout
No boot medium found

--============= Console ================--

litex> mem_list
Available memory regions:
ROM       0x00000000 0x10000
SRAM      0x00100000 0x80000
CSR       0xfff00000 0x10000

litex> mem_test 0x120000 0x50000
Memtest at 0x120000 (320.0KiB)...
  Write: 0x120000-0x170000 320.0KiB
   Read: 0x120000-0x170000 320.0KiB
Memtest OK

litex>

```