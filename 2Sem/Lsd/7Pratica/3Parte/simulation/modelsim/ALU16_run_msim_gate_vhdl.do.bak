transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {ALU16.vho}

vcom -93 -work work {C:/Users/Asus/Documents/Disciplinas/2Sem/Lsd/7Pratica/3Parte/ALU16_Tb.vhd}

vsim -t 1ps -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  ALU_16_Tb

add wave *
view structure
view signals
run -all
