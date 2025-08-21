transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+G:/FPGA_Projects/Ethernet_Switch/FPGACode/db {G:/FPGA_Projects/Ethernet_Switch/FPGACode/db/pll20_altpll.v}
vcom -93 -work work {G:/FPGA_Projects/Ethernet_Switch/FPGACode/TEN_BASE_TX.vhd}
vcom -93 -work work {G:/FPGA_Projects/Ethernet_Switch/FPGACode/PLL20.vhd}
vcom -93 -work work {G:/FPGA_Projects/Ethernet_Switch/FPGACode/BUFF_INPUT_DIFF.vhd}

