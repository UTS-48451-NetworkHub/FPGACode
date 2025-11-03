call path.bat
ghdl -a -Paltera/altera_mf/v93 -Paltera/altera_lnsim/v93 -Paltera/cycloneiv/v93 tb\altclkctrl_stub.vhd tb\reset_ctrl_stub.vhd axi4s_interconnect.vhd rx_2ff.vhd ram_eth_packet.vhd rx_fcs_crc.vhd rx_decoder.vhd sr_sipo.vhd rx_fsm_pr.vhd rx_fsm_axi.vhd rx_fcs_verify.vhd rx_fsm_adr.vhd eth_rx.vhd pll_main.vhd ringbuffer.vhd tx_phy.vhd sr_piso.vhd tx_fsm_pt.vhd tx_fsm_axi.vhd eth_tx.vhd eth_port.vhd ethernet_switch.vhd tb\ethernet_switch_tb.vhd
ghdl -e -Paltera/altera_mf/v93 -Paltera/altera_lnsim/v93 -Paltera/cycloneiv/v93 --ieee=synopsys -fexplicit ethernet_switch_tb 
ghdl -r -Paltera/altera_mf/v93 -Paltera/altera_lnsim/v93 -Paltera/cycloneiv/v93 --ieee=synopsys -fexplicit ethernet_switch_tb --wave=ethernet_switch_tb.ghw
call gtkwave.bat ethernet_switch_tb.ghw
