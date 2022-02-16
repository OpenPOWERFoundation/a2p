# A2 Interfaces to WB

* core interfaces

   * A2I/A2O A2L2 bus

   * Single (combined I/D) w/SMP extensions

   * Dual (separate I/D) WB buses w/SMP extensions

* bus interfaces

   * single WB

   * dual WB

* functions

   * queues one or more core commands

   * point of coherncy for larx/stcx, sync, tlbie, etc. for multicores below it (single/mulithread)

   * address compares necessary for ordering/coherency

   * optional mailbox interface for core-core peer and broadcast

   * arbitrates for WB bus(es)

   * gen responses for cores

## Possible configurations

* one core, WB: pass-through with SMP functions

* one core, A2L2: bridge with SMP functions

* multi-core: identical or mixed WB1/WB2/A2L2, queueing, arbitration, and SMP functions


### syntax check

```verilator --lint-only a2wb.v -Wno-LITENDIAN```

### sim build

```
verilator --cc --exe --trace -Wno-Litendian -Wno-fatal -I./src top.v tb.cpp
cd obj_dir;make -f Vtop.mk;cd ..
obj_dir/Vtop
```

### synth build (Litex)

* had to make some source changes for Vivado

```
rm obj_dir/*
# use sim top so tb.cpp is ok
verilator --cc --exe --trace -Wno-Litendian -Wno-fatal -I./litex/a2node/verilog -I./src top.v tb.cpp uart.cpp
cd obj_dir;make -f Vtop.mk;cd ..
obj_dir/Vtop

gtkwave wtf.vcd wtf.gtkw

vcd2fst wtf.vcd wtf.fst
gtkwave wtf.fst wtf.gtkw
```

