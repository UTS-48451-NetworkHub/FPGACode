vcom -work work TB_BUF_DP_OUT.vwf.vht
vsim -voptargs=+acc -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.BUFF_OUTPUT_DIFF_vhd_vec_tst -voptargs="+acc"
add wave /*
run -all
