rules.o : rules.asm
	nasm -f elf32 -o rules.o rules.asm
del.o : del.asm
	nasm -f elf32 -o del.o del.asm 
proj.o : proj.c
	gcc -c -m32 -o proj.o proj.c 
proj : proj.o rules.o del.o
	gcc -m32 -o proj proj.o rules.o del.o
run : proj
	./proj
