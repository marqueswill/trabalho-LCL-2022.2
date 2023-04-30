onerror {quit -f}
vlib work
vlog -work work projeto_final.vo
vlog -work work projeto_final.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.maquina_vlg_vec_tst
vcd file -direction projeto_final.msim.vcd
vcd add -internal maquina_vlg_vec_tst/*
vcd add -internal maquina_vlg_vec_tst/i1/*
add wave /*
run -all
