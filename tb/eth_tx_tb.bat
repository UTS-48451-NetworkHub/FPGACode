call path.bat
ghdl -a -Paltera/altera_mf/v93 tx_phy.vhd eth_tx_tb_driver.vhd ram_eth_packet.vhd sr_piso.vhd tx_fsm_pt.vhd tx_fsm_axi.vhd eth_tx.vhd eth_tx_tb.vhd
ghdl -e -Paltera/altera_mf/v93 --ieee=synopsys -fexplicit eth_tx_tb 
ghdl -r -Paltera/altera_mf/v93 --ieee=synopsys -fexplicit eth_tx_tb --wave=eth_tx_tb.ghw
call gtkwave.bat eth_tx_tb.ghw