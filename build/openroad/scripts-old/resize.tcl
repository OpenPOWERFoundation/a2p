if {![info exists standalone] || $standalone} {

  # Read liberty files
  foreach libFile $::env(LIB_FILES) {
    read_liberty $libFile
  }

  # Read lef
  read_lef $::env(TECH_LEF)
  read_lef $::env(SC_LEF)
  if {[info exist ::env(ADDITIONAL_LEFS)]} {
    foreach lef $::env(ADDITIONAL_LEFS) {
      read_lef $lef
    }
  }

  # Read def and sdc
  #read_def $::env(RESULTS_DIR)/3_2_floorplan_io.def
  read_def $::env(RESULTS_DIR)/2_floorplan.def
  read_sdc $::env(RESULTS_DIR)/2_floorplan.sdc
  if [file exists $::env(PLATFORM_DIR)/derate.tcl] {
    source $::env(PLATFORM_DIR)/derate.tcl
  }
} else {
  puts "Starting resizer"
}

proc print_banner {header} {
  puts "\n=========================================================================="
  puts "$header"
  puts "--------------------------------------------------------------------------"
}

print_banner "resize.tcl"

# Set res and cap
source $::env(PLATFORM_DIR)/setRC.tcl

estimate_parasitics -placement

#print_banner "report_checks"
#report_checks
#
#print_banner "report_tns"
#report_tns
#
#print_banner "report_wns"
#report_wns
#report_worst_slack

print_banner "report_design_area"
report_design_area

print_banner "instance_count"
puts [sta::network_leaf_instance_count]

#print_banner "report_wns"
#report_wns
#report_worst_slack

#
#print_banner "pin_count"
#puts [sta::network_leaf_pin_count]
#
puts ""

set_dont_use $::env(DONT_USE_CELLS)

# Do not buffer chip-level designs
#if {![info exists ::env(FOOTPRINT)]} {
#  puts "Perform port buffering..."
#  buffer_ports
#}

#wtf cant set this for repair_design now?
set buffer_cell $::env(RS_BUF_CELL)

puts "Perform buffer insertion..."
#repair_design -buffer_cell $buffer_cell ;# buffer_cell is deprecated

set_max_fanout $::env(RS_MAX_FO) [current_design]
set_max_transition [expr $::env(ABC_CLOCK_PERIOD_IN_PS)*.20] [current_design]

report_check_types -digits 3 -max_slew -max_cap -max_fanout -violators

#wtf this isnt doing anything(?)
repair_design -max_utilization 100
#wtf is this?
repair_timing

report_check_types -digits 3 -max_slew -max_cap -max_fanout -violators

if { [info exists env(TIE_SEPARATION)] } {
  set tie_separation $env(TIE_SEPARATION)
} else {
  set tie_separation 0
}

# Repair tie lo fanout
puts "Repair tie lo fanout..."
set tielo_cell_name [lindex $env(TIELO_CELL_AND_PORT) 0]
set tielo_lib_name [get_name [get_property [get_lib_cell $tielo_cell_name] library]]
set tielo_pin $tielo_lib_name/$tielo_cell_name/[lindex $env(TIELO_CELL_AND_PORT) 1]
repair_tie_fanout -separation $tie_separation $tielo_pin

# Repair tie hi fanout
puts "Repair tie hi fanout..."
set tiehi_cell_name [lindex $env(TIEHI_CELL_AND_PORT) 0]
set tiehi_lib_name [get_name [get_property [get_lib_cell $tiehi_cell_name] library]]
set tiehi_pin $tiehi_lib_name/$tiehi_cell_name/[lindex $env(TIEHI_CELL_AND_PORT) 1]
repair_tie_fanout -separation $tie_separation $tiehi_pin

# hold violations are not repaired until after CTS

# post report

print_banner "report_floating_nets"
report_floating_nets

#print_banner "report_checks"
#report_checks -path_delay max -fields {slew cap input}
#report_checks -path_delay min -fields {slew cap input}

#print_banner "report_tns"
#report_tns

#print_banner "report_wns"
#report_wns
#report_worst_slack

#print_banner "report_slew_violations"
#report_check_types -max_slew -max_capacitance -max_fanout -violators

print_banner "report_design_area"
report_design_area

print_banner "instance_count"
puts [sta::network_leaf_instance_count]

#print_banner "pin_count"
#puts [sta::network_leaf_pin_count]

puts ""

if {![info exists standalone] || $standalone} {
  write_def $::env(RESULTS_DIR)/3_3_place_resized.def
  exit
}
