call path.bat
ghdl -a -Paltera/altera_mf/v93 -Paltera/altera_lnsim/v93 -Paltera/cycloneiv/v93 rx_2ff.vhd rx_fcs_crc.vhd rx_decoder.vhd sr_sipo.vhd rx_fsm_pr.vhd rx_fsm_axi.vhd rx_fcs_verify.vhd rx_fsm_adr.vhd tx_fsm_axi.vhd tx_fsm_pt.vhd sr_piso.vhd ram_eth_packet.vhd tx_phy.vhd eth_tx.vhd eth_rx.vhd va/eth_tx_tb_driver.vhd tb/eth_e2e_tb.vhd
ghdl -e -Paltera/altera_mf/v93 -Paltera/altera_lnsim/v93 -Paltera/cycloneiv/v93 --ieee=synopsys -fexplicit eth_e2e_tb
ghdl -r -Paltera/altera_mf/v93 -Paltera/altera_lnsim/v93 -Paltera/cycloneiv/v93 --ieee=synopsys -fexplicit eth_e2e_tb --wave=eth_e2e_tb.ghw
call gtkwave.bat eth_e2e_tb.ghw
