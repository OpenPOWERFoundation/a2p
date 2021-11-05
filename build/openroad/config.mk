# design and tech
export DESIGN_NICKNAME = a2p
export DESIGN_NAME = A2P_WB
export PLATFORM = sky130hd

export VERILOG_FILES = $(sort $(wildcard ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/src/*.v))
export SDC_FILE = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

$(info Source files:)
$(info $(VERILOG_FILES))
$(info ..................................................)

# design and tech
unit = a2p

# 5% utilization
#[INFO PDN-0013] Inserting stdcell grid - grid
#Command terminated by signal 9
#export DIE_AREA    = 0   0   10000 10000
#export CORE_AREA   = 100 100 10000 10000
# 21% utilization
#Error: resize.tcl, 88 invalid command name "sta::max_slew_violation_count"
export DIE_AREA    = 0   0   5000 5000
export CORE_AREA   = 100 100 5000 5000

#export CORE_UTILIZATION = 100
#export CORE_ASPECT_RATIO = 1
#export CORE_MARGIN = 2

# a2o fu stuff
# keeps hierarchy of some cells even if flattening
#export PRESERVE_CELLS ?= tri_144x78_2r4w
# no flatten
#export SYNTH_NO_FLAT ?= 1
# don't optimize tri_144x78_2r4w
#export SYNTH_OPT_SELECTION ?= fu

#export PLACE_DENSITY ?= 0.80
# also set cycle time in constraint.sdc! derive it there from this?
#export ABC_CLOCK_PERIOD_IN_PS ?= 10000
#export ABC_DEFAULT_SCRIPT ?= 1

# fanout doesn't get adjusted to fix paths?  or resizer not working
export SYNTH_MAX_FANOUT ?= 32
export SYNTH_MAX_TRAN ?= 100

#wtf can't specify in resizer anymore?
#export RS_BUF_CELL ?= BUF_X4
#export RS_MAX_FO ?= 20

export REPORT_SLACK_MAX_PATHS ?= 100


