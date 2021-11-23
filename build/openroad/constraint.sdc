# A2P single-core with DFFRAM gpr, icdir, icdata, dcdir, dcdata

# ----------------------------------------------------------------------------------
# define clock

set clk_name clk
# set clk_period 50.0            ;# make it easy for or
set clk_period 10.0
puts "\[WTF\] clk_period=$clk_period"

set clkPort [get_ports $clk_name]
create_clock $clkPort -name clk -period $clk_period

# ----------------------------------------------------------------------------------
# apply clock to ins and outs

set input_delay_value   0.0
set output_delay_value  0.0      ;# what is this? rat? or period-rat? i think 0 is 'easiest'

set clk_index [lsearch [all_inputs] $clkPort]
set all_inputs_wo_clk [lreplace [all_inputs] $clk_index $clk_index]
set_input_delay $input_delay_value -clock [get_clocks clk] $all_inputs_wo_clk
set_output_delay $output_delay_value -clock [get_clocks clk] [all_outputs]

# ----------------------------------------------------------------------------------
# false paths

set_false_path -from [get_ports {reset}] -to [get_clocks clk]

