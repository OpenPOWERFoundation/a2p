# min paths: hold
# max paths: setup

    #{report_checks -path_delay min -fields {slew cap input nets fanout} -format full_clock_expanded}
    #{report_checks -to [all_registers] -digits 3 -unique -path_delay max -group_count 10 -slack_max 0 -fields {slew cap input nets fanout} -format full_clock_expanded -no_line_splits}


if {[info exist ::env(REPORT_SLACK_MAX_PATHS)]} {
    set slack_paths $::env(REPORT_SLACK_MAX_PATHS)
} else {
    set slack_paths 10
}

# sta commands
#wtf how to get var sub to work in this???
set commands { 
    {report_units}
    {check_setup}
    {report_clock_properties}
    {report_disabled_edges}
    {report_annotated_check -setup -hold -recovery -removal -nochange -width -period -max_skew -constant_arcs}
    {report_checks -unconstrained  -digits 3 -unique -path_delay max -group_count 100 -fields {input nets} -format end -no_line_splits}
    {report_checks -path_group clk -digits 3 -unique -path_delay max -group_count 10 -slack_max 0 -fields {slew cap input nets fanout} -format full_clock_expanded -no_line_splits}
    {report_tns -digits 3}
    {report_wns -digits 3}
    {report_worst_slack -digits 3}
    {report_design_area}
}

proc run {cmd} {
    puts "\n=========================================================================="
    puts "$cmd"
    puts "--------------------------------------------------------------------------"
    [{*}$cmd]    
}

foreach {cmd} $commands {
    run $cmd
} 

#wtf not writing file@!?@?@?
#set report $::env(REPORTS_DIR)/slacks_${slack_paths}.rpt
#report_checks -digits 3 -unique -path_delay max -group_count $slack_paths -fields {slew cap input nets fanout} -format full_clock_expanded -no_line_splits > $report
#puts "Wrote $report..."

