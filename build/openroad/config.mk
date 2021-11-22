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

export DIE_AREA    = 0.0 0.0 5200 4609.14
export CORE_AREA   = 210 210 4990 4389.14

export ABC_CLOCK_PERIOD_IN_PS = 10000
export ABC_DRIVER_CELL = sky130_fd_sc_hd__buf_1
export ABC_LOAD_IN_FF = 3

export SYNTH_MAX_FANOUT ?= 32
export SYNTH_MAX_TRAN ?= 100

export REPORT_SLACK_MAX_PATHS ?= 100


