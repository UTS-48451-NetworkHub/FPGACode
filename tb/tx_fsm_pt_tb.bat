call path.bat
ghdl -a tx_fsm_pt.vhd sr_piso.vhd tx_fsm_pt_tb.vhd
ghdl -e tx_fsm_pt_tb
ghdl -r tx_fsm_pt_tb --wave=tx_fsm_pt_tb.ghw
call gtkwave.bat tx_fsm_pt_tb.ghw