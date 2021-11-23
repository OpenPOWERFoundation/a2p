yosys -import

if {[info exist ::env(CACHED_NETLIST)]} {
  exec cp $::env(CACHED_NETLIST) $::env(RESULTS_DIR)/1_1_yosys.v
  if {[info exist ::env(CACHED_REPORTS)]} {
    exec cp {*}$::env(CACHED_REPORTS) $::env(REPORTS_DIR)/.
  }
  exit
}

# Setup verilog include directories
set vIdirsArgs ""
if {[info exist ::env(VERILOG_INCLUDE_DIRS)]} {
  foreach dir $::env(VERILOG_INCLUDE_DIRS) {
    lappend vIdirsArgs "-I$dir"
  }
  set vIdirsArgs [join $vIdirsArgs]
}


# Read verilog files
foreach file $::env(VERILOG_FILES) {
  read_verilog -defer -sv {*}$vIdirsArgs $file
}

# Read standard cells and macros as blackbox inputs
# These libs have their dont_use properties set accordingly
read_liberty -lib {*}$::env(DONT_USE_LIBS)

# Apply toplevel parameters (if exist)
if {[info exist ::env(VERILOG_TOP_PARAMS)]} {
  dict for {key value} $::env(VERILOG_TOP_PARAMS) {
    chparam -set $key $value $::env(DESIGN_NAME)
  }
}

# Read platform specific mapfile for OPENROAD_CLKGATE cells
if {[info exist ::env(CLKGATE_MAP_FILE)]} {
  read_verilog -defer $::env(CLKGATE_MAP_FILE)
}

# Mark modules to keep from getting removed in flattening
if {[info exist ::env(PRESERVE_CELLS)]} {
  # Expand hierarchy since verilog was read in with -defer
  hierarchy -check -top $::env(DESIGN_NAME)
  foreach cell $::env(PRESERVE_CELLS) {
    select -module $cell
    setattr -mod -set keep_hierarchy 1
    select -clear
  }
}

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

# Optimize the design
opt -purge $::env(SYNTH_OPT_SELECTION)

# Technology mapping of adders
if {[info exist ::env(ADDER_MAP_FILE)] && [file isfile $::env(ADDER_MAP_FILE)]} {
  # extract the full adders
  extract_fa
  # map full adders
  techmap -map $::env(ADDER_MAP_FILE)
  techmap
  # Quick optimization
  opt -fast -purge $::env(SYNTH_OPT_SELECTION)
}

# Technology mapping of latches
if {[info exist ::env(LATCH_MAP_FILE)]} {
  techmap -map $::env(LATCH_MAP_FILE)
}

# Technology mapping of flip-flops
# dfflibmap only supports one liberty file
if {[info exist ::env(DFF_LIB_FILE)]} {
  dfflibmap -liberty $::env(DFF_LIB_FILE)
} else {
  dfflibmap -liberty $::env(DONT_USE_SC_LIB)
}
#wtf - takes a while!
#freduce

#wtf dont elim ff; try full
#opt -keepdc -full $::env(SYNTH_OPT_SELECTION) 
# causes syntax error (.WIDTH) - read_verilog in floorplan.tcl?
# [ERROR STA-0164] ./results/nangate45/a2o_fu/base/1_synth.v line 387067, syntax error, unexpected '.'
# Error: floorplan.tcl, 28 STA-0164
#
#   \$mux  #(
#    .WIDTH(32'b00000000000000000000000000000001)
#  ) _122486_ (
#    .A(_000117_),
#    .B(_000118_),
#    .S(\fpr.reload_sp ),
#    .Y(_001391_)
#  );
# opt -keepdc -full is supposed to be this (-full affects opt_reduce, opt_expr) 
# opt_expr: -full = -mux_undef -mux_bool -undriven -fine
# opt_reduce: -full = -fine
# do
#  opt_muxtree
#  opt_reduce [-fine] [-full]
#  opt_merge [-share_all]
#  opt_rmdff [-keepdc]
#  opt_clean [-purge]
#  opt_expr [-mux_undef] [-mux_bool] [-undriven] [-clkinv] [-fine] [-full] [-keepdc]
# while <changed design>
#
# this kills abc later...
#opt -keepdc -mux_undef -mux_bool -undriven -fine $::env(SYNTH_OPT_SELECTION)
#works
opt -keepdc -mux_undef -mux_bool -undriven -fine
#still fails w/syntax
#opt -keepdc -full 

set constr [open $::env(OBJECTS_DIR)/abc.constr w]
puts $constr "set_driving_cell $::env(ABC_DRIVER_CELL)"
puts $constr "set_load $::env(ABC_LOAD_IN_FF)"
close $constr

#wtf
if {![info exist ::env(SYNTH_MAX_FANOUT)]} {
	set ::env(SYNTH_MAX_FANOUT) 64
}
set max_FO [expr $::env(SYNTH_MAX_FANOUT)]

if {[info exist ::env(ABC_CLOCK_PERIOD_IN_PS)]} {
  set clock_period [expr {$::env(ABC_CLOCK_PERIOD_IN_PS)}]
} else {
  set clock_period 1000000
}
if {![info exist ::env(SYNTH_MAX_TRAN)]} {
	set ::env(SYNTH_MAX_TRAN) [expr {0.1*$clock_period}]
} 
set max_Tran [expr $::env(SYNTH_MAX_TRAN)]

#set_max_fanout $max_FO
#set_max_transition $max_Tran

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

# supposedly for no script:
#for -liberty with -constr:
# strash; ifraig; scorr; dc2; dretime; strash; &get -n; &dch -f;
# &nf {D}; &put; buffer; upsize {D}; dnsize {D}; stime -p

puts "\n== abc.constr ============================================================"
set abcconstr [open $::env(OBJECTS_DIR)/abc.constr r]
set constr [read $abcconstr]
puts "$constr"
puts "--------------------------------------------------------------------------"

# Technology mapping for cells
# ABC supports multiple liberty files, but the hook from Yosys to ABC doesn't
if {[info exist ::env(ABC_CLOCK_PERIOD_IN_PS)] && [info exist ::env(ABC_DEFAULT_SCRIPT)]} {
  puts "\[WARN\]\[FLOW\] Running default yosys abc script for technology map."
  abc -D [expr $::env(ABC_CLOCK_PERIOD_IN_PS)] \
      -liberty $::env(DONT_USE_SC_LIB) \
      -constr $::env(OBJECTS_DIR)/abc.constr \
      -keepff   
} elseif {[info exist ::env(ABC_CLOCK_PERIOD_IN_PS)]} {
  puts "\n== abc.script ============================================================"
  set abcscript [open $::env(OBJECTS_DIR)/abc.script r]
  set script [read $abcscript]
  puts "$script"
  puts "--------------------------------------------------------------------------"
  abc -D [expr $::env(ABC_CLOCK_PERIOD_IN_PS)] \
      -script $::env(OBJECTS_DIR)/abc.script \
      -liberty $::env(DONT_USE_SC_LIB) \
      -constr $::env(OBJECTS_DIR)/abc.constr \
      -keepff 
} else {
  puts "\[WARN\]\[FLOW\] No clock period constraints detected in design."
  abc -liberty $::env(DONT_USE_SC_LIB) \
      -constr $::env(OBJECTS_DIR)/abc.constr \
      -keepff
}

puts "\nabc completed."

# Replace undef values with defined constants
setundef -zero

# Splitting nets resolves unwanted compound assign statements in netlist (assign {..} = {..})
splitnets

# Remove unused cells and wires
opt_clean -purge

# Technology mapping of constant hi- and/or lo-drivers
hilomap -singleton \
        -hicell {*}$::env(TIEHI_CELL_AND_PORT) \
        -locell {*}$::env(TIELO_CELL_AND_PORT)

# Insert buffer cells for pass through wires
insbuf -buf {*}$::env(MIN_BUF_CELL_AND_PORTS)

# Reports
tee -o $::env(REPORTS_DIR)/synth_check.txt check

# Create argument list for stat
set stat_libs ""
foreach lib $::env(DONT_USE_LIBS) {
  append stat_libs "-liberty $lib "
}
tee -o $::env(REPORTS_DIR)/synth_stat.txt stat {*}$stat_libs

# Write synthesized design
write_verilog -noattr -noexpr -nohex -nodec $::env(RESULTS_DIR)/1_1_yosys.v
