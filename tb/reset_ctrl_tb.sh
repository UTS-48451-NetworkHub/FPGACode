#/bin/sh
ghdl -a reset_ctrl.vhd reset_ctrl_tb.vhd
ghdl -e reset_ctrl_tb
ghdl -r reset_ctrl_tb --wave=reset_ctrl_tb.ghw
gtkwave reset_ctrl_tb.ghw