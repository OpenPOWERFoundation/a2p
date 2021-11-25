# arci

* achitectural and compliancy tests for verifying cores (static bugs, compliancy aberrations)

* test generation/build/run

### experimenting

* gen and run simple.tst

```
lxterm /dev/ttyUSB1 --kernel arci.bin --kernel-adr 0x120000
```

```
 BIOS built on Nov  7 2021 11:47:53
 BIOS CRC failed (expected 00000000, got ee67935c)
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
[LXTERM] Received firmware download request from the device.
[LXTERM] Uploading arci.bin to 0x00120000 (17576 bytes)...
[LXTERM] Upload complete (9.8KB/s).
[LXTERM] Booting the device.
[LXTERM] Done.

--============= Console ================--

litex> boot 0x120000
Executing booted program at 0x00120000

--============= Liftoff! ===============--
Thunderbirds are go!!!


Invoking test...
Test completed.  Checking results...

Instructions
  00123500: 38630001
  00123504: 38630001
  00123508: 38630001
  0012350C: 3880FFFD
  00123510: 7C841A15

Facilities
   R00: 00000000 00000000 00000000  
   R01: 00000000 00000000 00000000  
   R02: 00000000 00000000 00000000  
   R03: 00000000 00000003 00000003  
   R04: 00000000 00000000 00000000  
   R05: 00000000 00000000 00000000  
   R06: 00000000 00000000 00000000  
   R07: 00000000 00000000 00000000  
   R08: 00000000 00000000 00000000  
   R09: 00000000 00000000 00000000  
   R10: 00000000 00000000 00000000  
   R11: 00000000 00000000 00000000  
   R12: 00000000 00000000 00000000  
   R13: 00000000 00000000 00000000  
   R14: 00000000 00000000 00000000  
   R15: 00000000 00000000 00000000  
   R16: 00000000 00000000 00000000  
   R17: 00000000 00000000 00000000  
   R18: 00000000 00000000 00000000  
   R19: 00000000 00000000 00000000  
   R20: 00000000 00000000 00000000  
   R21: 00000000 00000000 00000000  
   R22: 00000000 00000000 00000000  
   R23: 00000000 00000000 00000000  
   R24: 00000000 00000000 00000000  
   R25: 00000000 00000000 00000000  
   R26: 00000000 00000000 00000000  
   R27: 00000000 00000000 00000000  
   R28: 00000000 00000000 00000000  
   R29: 00000000 00000000 00000000  
   R30: 00000000 00000000 00000000  
   R31: 00000000 00000000 00000000  
    CR: 00000000 20000000 20000000  
   XER: 00000000 00000000 00000000  
   CTR: F0000000 F0000000 F0000000  
    LR: 00000000 00000000 00000000  
   TAR: 00000000 00000000 00000000  


You has opulence.

Here you would run another test automatically, or temp halt, or reboot bios...
```
