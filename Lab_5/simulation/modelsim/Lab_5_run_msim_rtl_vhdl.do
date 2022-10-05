transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/ACADEMICS/EE214/Quartus/Projects/Lab_5/v_jtag.vhd}
vcom -93 -work work {D:/ACADEMICS/EE214/Quartus/Projects/Lab_5/v_jtag.vhd}
vcom -93 -work work {D:/ACADEMICS/EE214/Quartus/Projects/Lab_5/TopLevel.vhdl}
vcom -93 -work work {D:/ACADEMICS/EE214/Quartus/Projects/Lab_5/Gates.vhdl}
vcom -93 -work work {D:/ACADEMICS/EE214/Quartus/Projects/Lab_5/DUT.vhdl}
vcom -93 -work work {D:/ACADEMICS/EE214/Quartus/Projects/Lab_5/Lab_5.vhd}
vcom -93 -work work {D:/ACADEMICS/EE214/Quartus/Projects/Lab_5/mux.vhd}

vcom -93 -work work {D:/ACADEMICS/EE214/Quartus/Projects/Lab_5/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
