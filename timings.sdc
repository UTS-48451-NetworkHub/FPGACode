# Clock Stuff
create_clock -period 20.00 -name main_clk [get_ports MAIN_CLK]

derive_pll_clocks

derive_clock_uncertainty

# Ignore timing for async button reset / KEYs
set_false_path -from [get_ports RESET]
set_false_path -from [get_ports KEY*]

# Ethernet Ports (Input Delay)
set_input_delay -clock c_pll|altpll_component|auto_generated|pll1|clk[0] -min 24.5 [get_ports ETH*_RX]
set_input_delay -clock c_pll|altpll_component|auto_generated|pll1|clk[0] -max 25.5 [get_ports ETH*_RX]

# Ethernet Ports (Output Delay)
set_output_delay -clock c_pll|altpll_component|auto_generated|pll1|clk[0] -min 24.5 [get_ports ETH*_TX]
set_output_delay -clock c_pll|altpll_component|auto_generated|pll1|clk[0] -max 25.5 [get_ports ETH*_TX]

# Ethernet Ports (Output Enable Delay)
set_output_delay -clock c_pll|altpll_component|auto_generated|pll1|clk[0] -min 24.5 [get_ports ETH*_TX_EN]
set_output_delay -clock c_pll|altpll_component|auto_generated|pll1|clk[0] -max 25.5 [get_ports ETH*_TX_EN]

# Setup multicycle paths
set_multicycle_path -from c_pll|altpll_component|auto_generated|pll1|clk[0] -to [get_ports ETH*_TX] -setup 10
# Hold path: reduce hold checks (usually set to setup-1)
set_multicycle_path -from c_pll|altpll_component|auto_generated|pll1|clk[0] -to [get_ports ETH*_TX] -hold 9

# Same for the TX enable pin if appropriate
set_multicycle_path -from c_pll|altpll_component|auto_generated|pll1|clk[0] -to [get_ports ETH*_TX_EN] -setup 10
set_multicycle_path -from c_pll|altpll_component|auto_generated|pll1|clk[0] -to [get_ports ETH*_TX_EN] -hold 9

# LEDs
set_false_path -to [get_ports LED*]
