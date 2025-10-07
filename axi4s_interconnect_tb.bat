call path.bat
ghdl -a axi4s_interconnect.vhd eth_tx_tb_driver.vhd axi4s_interconnect_tb.vhd
ghdl -e axi4s_interconnect_tb 
ghdl -r axi4s_interconnect_tb --wave=axi4s_interconnect_tb.ghw
call gtkwave.bat axi4s_interconnect_tb.ghw
