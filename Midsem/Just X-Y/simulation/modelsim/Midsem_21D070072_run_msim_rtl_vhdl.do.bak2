transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/ACADEMICS/EE214/Quartus/Projects/Midsem/Just X-Y/Gates.vhdl}
vcom -93 -work work {D:/ACADEMICS/EE214/Quartus/Projects/Midsem/Just X-Y/DUT.vhdl}
vcom -93 -work work {D:/ACADEMICS/EE214/Quartus/Projects/Midsem/Just X-Y/Full_add.vhdl}
vcom -93 -work work {D:/ACADEMICS/EE214/Quartus/Projects/Midsem/Just X-Y/ADD_SUB.vhd}
vcom -93 -work work {D:/ACADEMICS/EE214/Quartus/Projects/Midsem/Just X-Y/ZNVLG.vhdl}

vcom -93 -work work {D:/ACADEMICS/EE214/Quartus/Projects/Midsem/Just X-Y/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
