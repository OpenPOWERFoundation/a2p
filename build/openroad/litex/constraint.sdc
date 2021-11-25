# A2P single-core with DFFRAM gpr, icdir, icdata, dcdir, dcdata gen'd by Litex

# ----------------------------------------------------------------------------------
# define clock

set clk_name wbs_clk_i
# set clk_period 50.0            ;# make it easy for or
#set clk_period 10.0             ;# 100Mhz
#set clk_period 25.0             ;# 40Mhz
set clk_period 40.0             ;# 25Mhz

puts "\[WTF\] clk_period=$clk_period"

set clkPort [get_ports $clk_name]
create_clock $clkPort -name clk -period $clk_period

# ----------------------------------------------------------------------------------
# apply clock to ins and outs

set input_delay_value   0.0
set output_delay_value  0.0

set clk_index [lsearch [all_inputs] $clkPort]
set all_inputs_wo_clk [lreplace [all_inputs] $clk_index $clk_index]
set_input_delay $input_delay_value -clock [get_clocks clk] $all_inputs_wo_clk
set_output_delay $output_delay_value -clock [get_clocks clk] [all_outputs]

# ----------------------------------------------------------------------------------
# false paths

set_false_path -from [get_ports {wbs_rst_i}] -to [get_clocks clk]
#set_false_path -from [get_ports {externalResetVector}] -to [get_clocks clk]