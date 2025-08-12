onerror {exit -code 1}
vlib work
vcom -work work FPGACode.vho
vcom -work work Test_PLL_20M.vwf.vht
vsim -suppress 12110 -voptargs="+acc" -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.FPGACode_vhd_vec_tst
vcd file -direction FPGACode.msim.vcd
vcd add -internal FPGACode_vhd_vec_tst/*
vcd add -internal FPGACode_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f




