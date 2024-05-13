transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/rhyan/Documents/ua/1.2/LSD/trabPrat08/part2/DrinksFSM.vhd}

