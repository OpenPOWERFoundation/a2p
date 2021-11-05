set clk_name clk
# make it easy
set clk_period 50.0

set input_delay_value 1
set output_delay_value 1

# define clock
set clkPort [get_ports $clk_name]
create_clock $clkPort -name clk -period $clk_period

# apply clock to ins and outs
set clk_index [lsearch [all_inputs] $clkPort]
set all_inputs_wo_clk [lreplace [all_inputs] $clk_index $clk_index]
set_input_delay $input_delay_value -clock [get_clocks clk] $all_inputs_wo_clk
set_output_delay $output_delay_value -clock [get_clocks clk] [all_outputs]

# false paths
set_false_path -from [get_ports {reset}] -to [get_clocks clk]
#wtf - is this the dc write path?
set_false_path -from [get_nets {dBusWB_ACK}]
set_false_path -from [get_nets {a2p_wb/dbuswb_ack}]
set_false_path -from [get_nets {a2p_wb/dbuswb*}]

