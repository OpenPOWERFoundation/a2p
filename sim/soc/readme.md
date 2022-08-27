# Testing full Litex software build

* manually update/install litex picolib for 32BE

* fixes for BE in A2P_4K1W.v

* cp A2P_4K1W.v A2P_WB.v
  and edit to rename to module A2P_WB

```
cd ../../build/litex
a2p_a2o_32.py --csr-csv csr.csv
powerpc-linux-gnu-objdump -d build/cmod7/software/bios/bios.elf > bios.d
powerpc-linux-gnu-objdump -s build/cmod7/software/bios/bios.elf > bios.s
bin2init build/cmod7/software/bios/bios.bin

#if rtl updated
#cp a2p/verilog/A2P_WB.v ../../../sim/soc/.
#cp build/cmod7/gateware/cmod.v ../../../sim/soc/soc.v
#sed -i "s/module cmod7/module soc/" soc.v   # keep consistent naming for top

cp bios.d ../../../sim/soc/.
cp bios.s ../../../sim/soc/.
cp build/cmod7/software/bios/bios.bin.hex ../../../sim/soc/cmod7_rom.init


cd ../../../sim/soc
top=cmod7
mod=soc
#if rtl updated
#sed -i "s/module $top/module $mod/" $mod.v   # keep consistent naming for top

###############################################
# build with or without tracing ###############

dir=obj_dir_${mod}
verilator -cc --exe --CFLAGS -DUART=2593 --trace --Mdir $dir --language 1364-2001 -Wno-fatal -Wno-LITENDIAN --error-limit 1 -Iunisims soc $mod tb_litex_$mod.cpp |& tee verilator_$mod.txt
make -j6 -C $dir -f V$mod.mk V$mod
$dir/V$mod | tee sim_soc.txt

dir=obj_dir_${mod}_notrace
verilator -cc --exe --CFLAGS -DUART=2593 --CFLAGS -DNO_TRACE=1 --Mdir $dir --language 1364-2001 -Wno-fatal -Wno-LITENDIAN --error-limit 1 -Iunisims soc $mod tb_litex_$mod.cpp |& tee verilator_$mod.txt
make -j6 -C $dir -f V$mod.mk V$mod
$dir/V$mod

################################################


vcd2fst a2plitex.vcd soc.fst
rm a2p_soc.vcd
gtkwave soc.fst soc.gtkw
```