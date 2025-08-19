onerror {exit -code 1}
vlib work
vcom -work work FPGACode.vho
vcom -work work simulation/TB_BUF_DP_OUT.vwf.vht
vsim -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.BUFF_OUTPUT_DIFF_vhd_vec_tst
vcd file -direction FPGACode.msim.vcd
vcd add -internal BUFF_OUTPUT_DIFF_vhd_vec_tst/*
vcd add -internal BUFF_OUTPUT_DIFF_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

