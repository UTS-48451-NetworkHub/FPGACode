call path.bat
ghdl -a sr_piso.vhd sr_piso_tb.vhd
ghdl -e sr_piso_tb
ghdl -r sr_piso_tb --wave=sr_piso_tb.ghw
call gtkwave.bat sr_piso_tb.ghw