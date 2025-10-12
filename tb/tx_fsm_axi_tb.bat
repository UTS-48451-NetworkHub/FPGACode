call path.bat
ghdl -a tx_fsm_axi.vhd tx_fsm_axi_tb.vhd
ghdl -e tx_fsm_axi_tb
ghdl -r tx_fsm_axi_tb --wave=tx_fsm_axi_tb.ghw
call gtkwave.bat tx_fsm_axi_tb.ghw
