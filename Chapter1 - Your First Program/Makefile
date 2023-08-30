hello:	hello.o
	gcc -o hello hello.o -no-pie
hello.o:	hello.asm
	nasm -f elf64 -g -F dwarf -o hello.o hello.asm -l hello.lst

# At this point, we will not build position-independent executables;
# it would really complicate the analysis of our program (on purpose, for
# security reasons). So, we add the parameter -no-pie in the makefile.