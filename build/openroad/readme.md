
# Test Site

* Litex platform for efabless caravel

* Core, I2C, UARTs, SPI, GPIO


#### https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts/tree/master/flow

create dir and add sources

```
cd ~/projects/OpenROAD-flow-scripts/flow
rm ./logs/sky130hd/a2p/base/*  # should be same as make clean_synth
make DESIGN_CONFIG=./designs/sky130hd/a2p/config.mk
```


## docs

https://openroad.readthedocs.io/en/latest/user/UserGuide.html#option-1-rtl-to-gds-flow

http://www.clifford.at/yosys/files/yosys_manual.pdf

https://people.eecs.berkeley.edu/~alanmi/abc/

https://github.com/The-OpenROAD-Project/OpenSTA/blob/35a3f1e4e3f148b30678f9455e64d220c6758462/doc/OpenSTA.pdf


## links

https://github.com/ayush-saran/Openlane_Workshop_VSD




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

* completed flow


## Yosys

### Makefile



### synth.tcl

* this controls many synth options; looks like USE_LSORACLE can be scripted too.

```
if { [info exists ::env(USE_LSORACLE)] } {
    set lso_script [open $::env(OBJECTS_DIR)/lso.script w]
    puts $lso_script "ps -a"
    puts $lso_script "oracle --config $::env(LSORACLE_KAHYPAR_CONFIG)"
    puts $lso_script "ps -m"
    puts $lso_script "crit_path_stats"
    puts $lso_script "ntk_stats"
    close $lso_script

    # LSOracle synthesis
    lsoracle -script $::env(OBJECTS_DIR)/lso.script -lso_exe $::env(LSORACLE_CMD)
    techmap
}
```


* the standard script just does ```opt``` after above

```
#wtf allow selectable opt - not working? says no match - maybe you run multiple opts, one with each selection
# seems to work with one; but there is a bunch of opt done with all - part of 'synth'? yes.  need to break up into
# steps if want selective application (make new proc synth_wtf)
# synth
# The following commands are executed by this synthesis command:
#42
#43 begin:
#44 hierarchy -check [-top <top> | -auto-top]
#45
#46 coarse:
#47 proc
#48 flatten (if -flatten)
#49 opt_expr
#50 opt_clean
#51 check
#52 opt
#53 wreduce
#54 alumacc
#55 share
#56 opt
#57 fsm
#58 opt -fast
#59 memory -nomap
#60 opt_clean
#61
#62 fine:
#63 opt -fast -full
#64 memory_map
#65 opt -full
#66 techmap
#67 opt -fast
#68 abc -fast
#69 opt -fast
#70
#71 check:
#72 hierarchy -check
#73 stat

# try, to get rid of wreduce - xu has a path with 21 straight mux21
proc synth_wtf {top {flatten 0}} {

  # begin:
  hierarchy -check -top $top

  # coarse:
  #proc ;#really? how is this passed in tcl???
#Warning: Module xu contains unmapped RTLIL processes. RTLIL processes
#can't always be mapped directly to Verilog always blocks. Unintended
#changes in simulation behavior are possible! Use "proc" to convert
#processes to logic networks and registers.
  #ok! and renames=rename
  procs
  if {$flatten} {
    flatten
  }
  opt_expr
  opt_clean
  check
  opt
  #wtf wreduce
  alumacc
  share
  opt
  #wtf fsm
  #opt -fast
  #wtf memory -nomap
  opt_clean

  #fine:
  opt -fast -full
  #wtf memory_map
  #wtf opt -full
  techmap
  opt -fast
  abc -fast
  opt -fast

  #check:
  hierarchy -check
  stat
}

if {![info exist ::env(SYNTH_OPT_SELECTION)]} {
  set ::env(SYNTH_OPT_SELECTION) {}
} else {
  set selection {}
  foreach {m} $::env(SYNTH_OPT_SELECTION) {
    set selection "$selection -module $m"
  }
  set ::env(SYNTH_OPT_SELECTION) $selection
  # doesnt work either
  #set ::env(SYNTH_OPT_SELECTION) "-module {$::env(SYNTH_OPT_SELECTION)}"
  puts "\nOnly these selections will be optimized: $::env(SYNTH_OPT_SELECTION)"
}
set ::env(SYNTH_OPT_SELECTION) {}

# Generic synthesis
#wtf synth -top $::env(DESIGN_NAME) -flatten
if {[info exist ::env(SYNTH_NO_FLAT)] && $::env(SYNTH_NO_FLAT) } {
	#synth -top $::env(DESIGN_NAME)
  synth_wtf $::env(DESIGN_NAME)
} else {
	#synth -top $::env(DESIGN_NAME) -flatten
	synth_wtf $::env(DESIGN_NAME) 1
}
```

* also using abc_area.script (ABC_AREA) or abc_speed.script instead of this; but now LSOracle is already built-in

```

set script [open $::env(OBJECTS_DIR)/abc.script w]

#wtf some stuff from openlane
#fx – Detects logic sharing by extracting two-cube divisors and two-literal single-cube divisors using the algorithm by Rajski/Vasudevamurthi (TCAD’92)
#0. puts $script "fx"
#mfs – An area-oriented resynthesis engine for network mapped into K-LUTs described in the paper.
# puts $script "mfs"
#strash – Transforms the current network into an AIG by one-level structural hashing. The resulting AIG is a logic network composed of two-input AND gates
# and inverters represented as complemented attributes on the edges. Structural hashing is a purely combinational transformation, which does not modify
# the number and positions of latches.
#1. puts $script "strash"
#refactor – Performs iterative collapsing and refactoring of logic cones in the AIG, which attempts to reduce the number of AIG nodes and the number of logic levels.
#2. puts $script "refactor"
# map – Performs standard cell mapping of the current network using the current library. If the current network is an AIG or an AIG with choices, it is
# used for mapping as it is. If the current network is a logic network, before mapping this command performs structural hashing of the factored forms of
# the nodes (resulting in an AIG) followed by balancing (resulting in an AIG that is well-balanced for delay). Both balancing and mapping take into account
# the arrival times of primary inputs which can be represented in BLIF. Switch –a disables area recovery and outputs the network as it is after delay
# optimal mapping. Another useful command, fraig_sweep, is applied after mapping by default (use switch –s to disable) to merge functionally equivalent
# nodes leading to additional savings in area.
#puts $script "map -B 0.9"  ;#wtf appears to affect cell selection; went from nand-nor to aoi21/oai21
#3. puts $script "map"
#4. puts $script "topo"

puts $script "fraig"
#puts $script "rewrite" ;# stinks for fu
puts $script "refactor"
puts $script "balance"
#puts $script "rewrite"
#puts $script "refactor"
#puts $script "balance"
#puts $script "rewrite"
#puts $script "refactor"
#puts $script "balance"
#puts $script "rewrite"
#puts $script "refactor"
#puts $script "balance"
#puts $script "rewrite"
#puts $script "refactor"
#puts $script "balance"
puts $script "map"
puts $script "topo"

#wtf cant make this plugin; yosys doesnt have verilog frontend
#https://github.com/lnis-uofu/LSOracle-Plugin/blob/main/oracle.cc

puts $script "retime -D 500"


#https://github.com/berkeley-abc/abc/blob/9b759067405c1a5e82c4424db642b6436dbc6647/src/map/scl/scl.c
#puts $script "stime -c"  ;#wtf
#puts $script "buffer -c" ;#wtf

#    fprintf( pAbc->Err, "\t           performs buffering and sizing and mapped network\n" );
#    fprintf( pAbc->Err, "\t-G <num> : target gain percentage [default = %d]\n", pPars->GainRatio );
#    fprintf( pAbc->Err, "\t-S <num> : target slew in pisoseconds [default = %d]\n", pPars->Slew );
#    fprintf( pAbc->Err, "\t-N <num> : the maximum fanout count [default = %d]\n", pPars->nDegree );
#    fprintf( pAbc->Err, "\t-s       : toggle performing only sizing [default = %s]\n", pPars->fSizeOnly? "yes": "no" );
#    fprintf( pAbc->Err, "\t-b       : toggle using buffers instead of inverters [default = %s]\n", pPars->fAddBufs? "yes": "no" );
#    fprintf( pAbc->Err, "\t-p       : toggle buffering primary inputs [default = %s]\n", pPars->fBufPis? "yes": "no" );
#    fprintf( pAbc->Err, "\t-c       : toggle using wire-loads if specified [default = %s]\n", pPars->fUseWireLoads? "yes": "no" );
#    fprintf( pAbc->Err, "\t-v       : toggle printing verbose information [default = %s]\n", pPars->fVerbose? "yes": "no" );
#    fprintf( pAbc->Err, "\t-w       : toggle printing more verbose information [default = %s]\n", pPars->fVeryVerbose? "yes": "no" );
puts $script "buffer -c -N $max_FO -S $max_Tran -v"
#    fprintf( pAbc->Err, "\t           selectively increases gate sizes on the critical path\n" );
#    fprintf( pAbc->Err, "\t-I <num> : the number of upsizing iterations to perform [default = %d]\n", pPars->nIters );
#    fprintf( pAbc->Err, "\t-J <num> : the number of iterations without improvement to stop [default = %d]\n", pPars->nIterNoChange );
#    fprintf( pAbc->Err, "\t-W <num> : delay window (in percent) of near-critical COs [default = %d]\n", pPars->Window );
#    fprintf( pAbc->Err, "\t-R <num> : ratio of critical nodes (in percent) to update [default = %d]\n", pPars->Ratio );
#    fprintf( pAbc->Err, "\t-N <num> : limit on discrete upsizing steps at a node [default = %d]\n", pPars->Notches );
#    fprintf( pAbc->Err, "\t-D <num> : delay target set by the user, in picoseconds [default = %d]\n", pPars->DelayUser );
#    fprintf( pAbc->Err, "\t-G <num> : delay gap during updating, in picoseconds [default = %d]\n", pPars->DelayGap );
#    fprintf( pAbc->Err, "\t-T <num> : approximate timeout in seconds [default = %d]\n", pPars->TimeOut );
#    fprintf( pAbc->Err, "\t-X <num> : ratio for buffer tree estimation [default = %d]\n", pPars->BuffTreeEst );
#    fprintf( pAbc->Err, "\t-B <num> : frequency of bypass transforms [default = %d]\n", pPars->BypassFreq );
#    fprintf( pAbc->Err, "\t-c       : toggle using wire-loads if specified [default = %s]\n", pPars->fUseWireLoads? "yes": "no" );
#    fprintf( pAbc->Err, "\t-s       : toggle using slack based on departure times [default = %s]\n", pPars->fUseDept? "yes": "no" );
#    fprintf( pAbc->Err, "\t-d       : toggle dumping statistics into a file [default = %s]\n", pPars->fDumpStats? "yes": "no" );
#    fprintf( pAbc->Err, "\t-v       : toggle printing verbose information [default = %s]\n", pPars->fVerbose? "yes": "no" );
#    fprintf( pAbc->Err, "\t-w       : toggle printing more verbose information [default = %s]\n", pPars->fVeryVerbose? "yes": "no" );
puts $script "upsize -c -D [expr $::env(ABC_CLOCK_PERIOD_IN_PS)] -I 50 -J 10"
#puts $script "upsize -c"
#    fprintf( pAbc->Err, "\t           selectively decreases gate sizes while maintaining delay\n" );
#    fprintf( pAbc->Err, "\t-I <num> : the number of upsizing iterations to perform [default = %d]\n", pPars->nIters );
#    fprintf( pAbc->Err, "\t-J <num> : the number of iterations without improvement to stop [default = %d]\n", pPars->nIterNoChange );
#    fprintf( pAbc->Err, "\t-N <num> : limit on discrete upsizing steps at a node [default = %d]\n", pPars->Notches );
#    fprintf( pAbc->Err, "\t-D <num> : delay target set by the user, in picoseconds [default = %d]\n", pPars->DelayUser );
#    fprintf( pAbc->Err, "\t-G <num> : delay gap during updating, in picoseconds [default = %d]\n", pPars->DelayGap );
#    fprintf( pAbc->Err, "\t-T <num> : approximate timeout in seconds [default = %d]\n", pPars->TimeOut );
#    fprintf( pAbc->Err, "\t-X <num> : ratio for buffer tree estimation [default = %d]\n", pPars->BuffTreeEst );
#    fprintf( pAbc->Err, "\t-c       : toggle using wire-loads if specified [default = %s]\n", pPars->fUseWireLoads? "yes": "no" );
#    fprintf( pAbc->Err, "\t-s       : toggle using slack based on departure times [default = %s]\n", pPars->fUseDept? "yes": "no" );
#    fprintf( pAbc->Err, "\t-d       : toggle dumping statistics into a file [default = %s]\n", pPars->fDumpStats? "yes": "no" );
#    fprintf( pAbc->Err, "\t-v       : toggle printing verbose information [default = %s]\n", pPars->fVerbose? "yes": "no" );
#    fprintf( pAbc->Err, "\t-w       : toggle printing more verbose information [default = %s]\n", pPars->fVeryVerbose? "yes": "no" );
#    fprintf( pAbc->Err, "\t-h       : print the command usage\n");
puts $script "dnsize -c -D [expr $::env(ABC_CLOCK_PERIOD_IN_PS)] -I 5 -J 2"
#    fprintf( pAbc->Err, "\t         performs STA using Liberty library\n" );
#    fprintf( pAbc->Err, "\t-X     : min Cout/Cave ratio for tree estimations [default = %d]\n", nTreeCRatio );
#    fprintf( pAbc->Err, "\t-c     : toggle using wire-loads if specified [default = %s]\n", fUseWireLoads? "yes": "no" );
#    fprintf( pAbc->Err, "\t-a     : display timing information for all nodes [default = %s]\n", fShowAll? "yes": "no" );
#    fprintf( pAbc->Err, "\t-p     : display timing information for critical path [default = %s]\n", fPrintPath? "yes": "no" );
#    fprintf( pAbc->Err, "\t-d     : toggle dumping statistics into a file [default = %s]\n", fDumpStats? "yes": "no" );
puts $script "stime -c -p"
puts $script "print_stats -m"   ;#wtf
close $script
```
