transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Quartus/Projects/Lab1/LAB1Q2/Gates.vhdl}
vcom -93 -work work {D:/Quartus/Projects/Lab1/LAB1Q2/DUT.vhdl}
vcom -93 -work work {D:/Quartus/Projects/Lab1/LAB1Q2/Lab1Q2.vhd}

vcom -93 -work work {D:/Quartus/Projects/Lab1/LAB1Q2/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
