# design and tech
export DESIGN_NICKNAME = a2p
export DESIGN_NAME = A2P_WB
export PLATFORM = sky130hd

export VERILOG_FILES := $(sort $(wildcard ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/src/*.v))
export SDC_FILE := ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

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

#HACK! uniquify logs, objects, reports, results
export DESIGN_NICKNAME := $(DESIGN_NICKNAME)/output/$(shell date "+%Y%m%d%H%M%S")
$(info [WTF] Output Dirs: $(DESIGN_NICKNAME))


# ----------------------------------------------------------------------------------
# ----------------------------------------------------------------------------------
# CTS

# forget about this for now - occurred when added dffram dir/caches.  anton says hold misses are fake anyway :)
# do i need something else from dffram build?
# Repair hold violations...
# [INFO RSZ-0046] Found 60472 endpoints with hold violations.
# [WARNING RSZ-0066] Unable to repair all hold violations.
# [INFO RSZ-0032] Inserted 213923 hold buffers.
# [ERROR DPL-0019] detailed placement failed on hold33177
# continue if cts wants to barf...
export WTF_CTS_IGNORE_HOLD_MISSES = 1
