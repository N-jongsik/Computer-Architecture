copy insertion_sort.dat M_DATA_SEG.txt
copy insertion_sort.txt M_TEXT_SEG.txt
vvp tb_CC.o -fst
gtkwave tb_CC.vcd
