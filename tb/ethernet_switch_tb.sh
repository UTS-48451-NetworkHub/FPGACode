#/bin/sh
ghdl -a -Paltera/altera_mf/v93 -Paltera/altera_lnsim/v93 -Paltera/cycloneiv/v93 altclkctrl_stub.vhd reset_ctrl_stub.vhd pll_main.vhd ram_eth_packet.vhd sr_piso.vhd
ghdl -a -Paltera/altera_mf/v93 -Paltera/altera_lnsim/v93 -Paltera/cycloneiv/v93 tx_phy.vhd tx_fsm_pt.vhd tx_fsm_axi.vhd eth_tx.vhd eth_port.vhd eth_tx_tb_driver.vhd ringbuffer.vhd axi4s_interconnect.vhd ethernet_switch.vhd ethernet_switch_tb.vhd
ghdl -e -Paltera/altera_mf/v93 -Paltera/altera_lnsim/v93 -Paltera/cycloneiv/v93 --ieee=synopsys -fexplicit ethernet_switch_tb 
ghdl -r -Paltera/altera_mf/v93 -Paltera/altera_lnsim/v93 -Paltera/cycloneiv/v93 --ieee=synopsys -fexplicit ethernet_switch_tb --wave=ethernet_switch_tb.ghw
gtkwave ethernet_switch_tb.ghw
