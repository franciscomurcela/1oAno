transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Asus/Documents/Disciplinas/2Sem/Lsd/7Pratica/2Parte/Dec2_4En.vhd}

