transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Quartus/Projects/Lab_2/Lab_1_Q_2/Gates.vhdl}
vcom -93 -work work {D:/Quartus/Projects/Lab_2/Lab_1_Q_2/DUT.vhdl}
vcom -93 -work work {D:/Quartus/Projects/Lab_2/Lab_1_Q_2/Demux.vhd}
vcom -93 -work work {D:/Quartus/Projects/Lab_2/Lab_1_Q_2/Lab_2_Q_2.vhd}

vcom -93 -work work {D:/Quartus/Projects/Lab_2/Lab_1_Q_2/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
