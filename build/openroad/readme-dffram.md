# A2P for OpenLane/Carousel

* manually replace inferred mem with array macros; eventually make all arrays components (inferred for FPGA, phys for tech)

## Arrays to convert to DFFRAM

* IC (4K)

   ```
   reg [21:0] ways_0_tags [0:127];
   reg [31:0] ways_0_datas [0:1023];
   ```

   * tag: 128x22b
   * data: 1024x32b


* DC (4K)

   ```
   reg [21:0] DC_DIR_tags [0:127];
   reg [7:0] DC_DIR_data_symbol0 [0:1023];
   reg [7:0] DC_DIR_data_symbol1 [0:1023];
   reg [7:0] DC_DIR_data_symbol2 [0:1023];
   reg [7:0] DC_DIR_data_symbol3 [0:1023];
   ```

   * tag: 128x22b
   * data(4): 1024x8b

* GPR

   ```
   reg [31:0] RegFilePlugin_regFile [0:31] /* verilator public */ ;
   ```

   * 32x32b, 3 read, 1 write

## Creating DFFRAM arrays

* ***REQUIRES DOCKER***

* github.com/efabless/openlane/blob/master/README.md

```
# clone OpenLane
# make full-pdk
```

* github.com/Cloud-V/DFFRAM

```
# clone DFFRam
export PDK_ROOT=/home/wtf/projects2/OpenLane/pdks

# optionally set design name for any builds; **doesn't set the output name**
# export FORCE_DESIGN_NAME=ram_32_32
```

### GPR

* need 3r1w and DFFRam creates 2r1w reg; so need 2 regs, or 3 32x32 RAM, or custom 3r script

* -v 1R1W not supported; is this basically the same as ram_32_32??

* multiple arrays will be instantiated in single gpr module; use parameter to select gen style

#### RAM

```
#export FORCE_DESIGN_NAME=ram_32x32
dffram.py -s 32x32 -p $PDK_ROOT
```

#### REG

*  building block <pdk>:<scl>:<name> corresponds to platforms/<pdk>/<scl>/_building_blocks/<name>/model.v

```
#export FORCE_DESIGN_NAME=reg_32x32
dffram.py -s 32x32 -v 2R1W -p $PDK_ROOT -b sky130A:sky130_fd_sc_hd:rf
```

#### Tag Arrays, 4K

* need to make **decellerator** script to whack the extra 10 bits/word after place and then run rest of stuff

```
#export FORCE_DESIGN_NAME=ram_128x32
dffram.py -s 128x32 -p $PDK_ROOT
```

* OR try...

```
export FORCE_ACCEPT_SIZE=wtf
#export FORCE_DESIGN_NAME=ram_128x22
dffram.py -s 128x22 -p $PDK_ROOT
unset FORCE_ACCEPT_SIZE
```

#### Data Array, IC

```
#export FORCE_DESIGN_NAME=ram_1024x32
dffram.py -s 1024x32 -p $PDK_ROOT
```

#### Data Array, DC (4)

* DFFRam handles byte writes, so this is same as IC

```
#export FORCE_DESIGN_NAME=ram_1024x8
#dffram.py -s 1024x8 -p $PDK_ROOT
```

IC/DC arrays could be built using different subunits if better for layout/timing; 4KB = 128 lines x 32B.


## Updating core manually


* this is compiling components on non-generated paths...

```verilator --lint-only -Wno-fatal A2P_WB_RAM.v```

* add gpr.v and module to top; can use this to test on FPGA with ```EXPAND_TYPE=`INFERRED```




