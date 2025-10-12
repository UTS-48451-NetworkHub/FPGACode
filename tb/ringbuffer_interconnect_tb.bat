call path.bat
ghdl -a ringbuffer.vhd eth_tx_tb_driver.vhd axi4s_interconnect.vhd ringbuffer_interconnect_tb.vhd
ghdl -e ringbuffer_interconnect_tb 
ghdl -r ringbuffer_interconnect_tb --wave=ringbuffer_interconnect_tb.ghw
call gtkwave.bat ringbuffer_interconnect_tb.ghw
