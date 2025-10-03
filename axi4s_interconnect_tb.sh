#/bin/sh
ghdl -a interconnect.vhd interconnect_tb.vhd
ghdl -e interconnect_tb
ghdl -r interconnect_tb --wave=interconnect_tb.ghw
gtkwave interconnect_tb.ghw