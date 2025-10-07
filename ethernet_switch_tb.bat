call path.bat
ghdl -a -Paltera/altera_mf/v93 -Paltera/altera_lnsim/v93 -Paltera/cycloneiv/v93 altclkctrl_stub.vhd reset_ctrl_stub.vhd axi4s_interconnect.vhd pll_main.vhd ringbuffer.vhd tx_phy.vhd eth_tx_tb_driver.vhd ram_eth_packet.vhd sr_piso.vhd tx_fsm_pt.vhd tx_fsm_axi.vhd eth_tx.vhd eth_port.vhd ethernet_switch.vhd ethernet_switch_tb.vhd
ghdl -e -Paltera/altera_mf/v93 -Paltera/altera_lnsim/v93 -Paltera/cycloneiv/v93 --ieee=synopsys -fexplicit ethernet_switch_tb 
ghdl -r -Paltera/altera_mf/v93 -Paltera/altera_lnsim/v93 -Paltera/cycloneiv/v93 --ieee=synopsys -fexplicit ethernet_switch_tb --wave=ethernet_switch_tb.ghw
call gtkwave.bat ethernet_switch_tb.ghw
