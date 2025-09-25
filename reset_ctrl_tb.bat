call path.bat
ghdl -a reset_ctrl.vhd reset_ctrl_tb.vhd
ghdl -e reset_ctrl_tb
ghdl -r reset_ctrl_tb --wave=reset_ctrl_tb.ghw
call gtkwave.bat reset_ctrl_tb.ghw