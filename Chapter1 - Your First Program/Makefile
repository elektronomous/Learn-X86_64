hello:	hello.o
	gcc -o hello hello.o -no-pie
hello.o:	hello.asm
	nasm -f elf64 -g -F dwarf -o hello.o hello.asm -l hello.lst