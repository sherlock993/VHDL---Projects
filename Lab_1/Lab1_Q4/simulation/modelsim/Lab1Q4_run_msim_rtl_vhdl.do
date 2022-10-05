transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Quartus/Projects/Lab_1/Lab1_Q4/Gates.vhdl}
vcom -93 -work work {D:/Quartus/Projects/Lab_1/Lab1_Q4/DUT.vhdl}
vcom -93 -work work {D:/Quartus/Projects/Lab_1/Lab1_Q4/Lab1Q4.vhd}

vcom -93 -work work {D:/Quartus/Projects/Lab_1/Lab1_Q4/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
