
# Test Site

* Litex platform for efabless caravel

* Core, I2C, UARTs, SPI, GPIO


#### https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts/tree/master/flow

create dir and add sources

```
cd ../../..
make DESIGN_CONFIG=./designs/sky130hd/a2p/config.mk
```


## docs

https://openroad.readthedocs.io/en/latest/user/UserGuide.html#option-1-rtl-to-gds-flow

http://www.clifford.at/yosys/files/yosys_manual.pdf

https://people.eecs.berkeley.edu/~alanmi/abc/

https://github.com/The-OpenROAD-Project/OpenSTA/blob/35a3f1e4e3f148b30678f9455e64d220c6758462/doc/OpenSTA.pdf


### steps

1. initial synth/timing

* initialize floorplan (initialize_floorplan)
* gate_resizer (multiple commands)
    * can set estimated wire rc per layer
    * can add buffers on I/O
    * repairs fanouts/caps/etc.
    * STA can run before and/or after this
* OpenSTA (sta)

2. full PD

* macro place (macro_placement)
* tapcell/endcap (tapcell)
* global placement (global_placement)
* detailed placement (legalize_placement)
* CTS (clock_tree_synthesis)
* global routing (fast_route)
* detailed routing (detailed_route)


### replace inferred mems with DFFRAM components

(readme-dffram.md)

1. test with gpr using DFFRAMs and ic/dc dir/dat using small inferred mems (1 location)
