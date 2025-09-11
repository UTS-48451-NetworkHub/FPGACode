call path.bat
ghdl -a tx_phy.vhd tx_phy_tb.vhd
ghdl -e tx_phy_tb
ghdl -r tx_phy_tb --wave=tx_phy_tb.ghw
gtkwave tx_phy_tb.ghw
