vlib work
vlog SYN_RAM.v FSM_SPI.v WRAPPER.v MASTER_tb.v
vsim -voptargs=+acc work.MASTER_tb
add wave *
run -all
#quit -sim 

