alive3:	alive3.o
	gcc -o alive3 alive3.o -no-pie
alive3.o:	alive3.asm
	nasm -f elf64 -g -F dwarf alive3.asm -l alive3.lst