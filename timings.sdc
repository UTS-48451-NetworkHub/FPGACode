# Clock Stuff
create_clock -period 20.00 -name main_clk [get_ports MAIN_CLK]

derive_pll_clocks

derive_clock_uncertainty

# Ethernet Ports (Skew)
set_max_delay -from [get_ports ETH*_TX_P] -to [get_ports ETH*_TX_N] 0.50
set_max_delay -from [get_ports ETH*_RX_P] -to [get_ports ETH*_RX_N] 0.50

# Ethernet Ports (Input Delay)
set_input_delay -clock inst|altpll_component|auto_generated|pll1|clk[0] -min 24.5 [get_ports ETH*_RX_*]
set_input_delay -clock inst|altpll_component|auto_generated|pll1|clk[0] -max 25.5 [get_ports ETH*_RX_*]

# Ethernet Ports (Output Delay)
set_output_delay -clock inst|altpll_component|auto_generated|pll1|clk[0] -min 24.5 [get_ports ETH*_TX_*]
set_output_delay -clock inst|altpll_component|auto_generated|pll1|clk[0] -max 25.5 [get_ports ETH*_TX_*]
