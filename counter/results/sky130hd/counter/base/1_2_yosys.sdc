current_design counter

create_clock -name core_clock -period 20.0 [get_ports clk]

set_input_delay  2.0 -clock core_clock [get_ports rst]
set_output_delay 2.0 -clock core_clock [get_ports count*]
