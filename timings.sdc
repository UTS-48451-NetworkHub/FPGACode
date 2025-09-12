# Clock Stuff
create_clock -period 20.00 -name main_clk [get_ports MAIN_CLK]

derive_pll_clocks

derive_clock_uncertainty

# Ethernet Ports (Input Delay)
set_input_delay -clock c_pll|altpll_component|auto_generated|pll1|clk[0] -min 24.5 [get_ports ETH*_RX]
set_input_delay -clock c_pll|altpll_component|auto_generated|pll1|clk[0] -max 25.5 [get_ports ETH*_RX]

# Ethernet Ports (Output Delay)
set_output_delay -clock c_pll|altpll_component|auto_generated|pll1|clk[0] -min 24.5 [get_ports ETH*_TX]
set_output_delay -clock c_pll|altpll_component|auto_generated|pll1|clk[0] -max 25.5 [get_ports ETH*_TX]

# Ethernet Ports (Output Enable Delay)
set_output_delay -clock c_pll|altpll_component|auto_generated|pll1|clk[0] -min 24.5 [get_ports ETH*_TX_EN]
set_output_delay -clock c_pll|altpll_component|auto_generated|pll1|clk[0] -max 25.5 [get_ports ETH*_TX_EN]

