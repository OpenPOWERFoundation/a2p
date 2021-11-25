
# Create Project

create_project -force -name caravel_user -part xc7a35t-CPG236-1
set_msg_config -id {Common 17-55} -new_severity {Warning}

# Add Sources

read_verilog {/home/wtf/projects/a2p-opf/build/openroad/litex/momv modules/issiram.v}
read_verilog {/home/wtf/projects/a2p-opf/build/openroad/litex/a2p/verilog/A2P_WB.v}
read_verilog {/home/wtf/projects/a2p-opf/build/openroad/litex/build/caravel_user/gateware/caravel_user.v}

# Add EDIFs


# Add IPs


# Add constraints

read_xdc caravel_user.xdc
set_property PROCESSING_ORDER EARLY [get_files caravel_user.xdc]

# Add pre-synthesis commands


# Synthesis

synth_design -directive default -top caravel_user -part xc7a35t-CPG236-1

# Synthesis report

report_timing_summary -file caravel_user_timing_synth.rpt
report_utilization -hierarchical -file caravel_user_utilization_hierarchical_synth.rpt
report_utilization -file caravel_user_utilization_synth.rpt

# Optimize design

opt_design -directive default

# Add pre-placement commands


# Placement

place_design -directive default

# Placement report

report_utilization -hierarchical -file caravel_user_utilization_hierarchical_place.rpt
report_utilization -file caravel_user_utilization_place.rpt
report_io -file caravel_user_io.rpt
report_control_sets -verbose -file caravel_user_control_sets.rpt
report_clock_utilization -file caravel_user_clock_utilization.rpt

# Add pre-routing commands


# Routing

route_design -directive default
phys_opt_design -directive default
write_checkpoint -force caravel_user_route.dcp

# Routing report

report_timing_summary -no_header -no_detailed_paths
report_route_status -file caravel_user_route_status.rpt
report_drc -file caravel_user_drc.rpt
report_timing_summary -datasheet -max_paths 10 -file caravel_user_timing.rpt
report_power -file caravel_user_power.rpt

# Bitstream generation

write_bitstream -force caravel_user.bit 

# End

quit