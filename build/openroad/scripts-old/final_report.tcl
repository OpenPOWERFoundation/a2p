if {![info exists standalone] || $standalone} {

  # Read lef
  read_lef $::env(TECH_LEF)
  read_lef $::env(SC_LEF)
  if {[info exist ::env(ADDITIONAL_LEFS)]} {
    foreach lef $::env(ADDITIONAL_LEFS) {
      read_lef $lef
    }
  }

  # Read liberty files
  foreach libFile $::env(LIB_FILES) {
    read_liberty $libFile
  }

  # Read def and sdc
  #wtf should change this so 6_final.def/sdc is always used!!!
  #read_def $::env(RESULTS_DIR)/2_floorplan.def
  #read_sdc $::env(RESULTS_DIR)/2_floorplan.sdc
  read_def $::env(RESULTS_DIR)/3_place.def
  read_sdc $::env(RESULTS_DIR)/3_place.sdc

  #wtf want ideal clocks
  #set_propagated_clock [all_clocks]
  
} else {
  puts "Starting final report"
}

source $::env(SCRIPTS_DIR)/report_metrics.tcl


if {![info exists standalone] || $standalone} {
  exit
}
