; hello3.asm
bits 64                 ; tell the assembler that this code is 64-bit

section .data
    msg db      "hello, world", 10, 0
section .bss
section .text
    global main

main:
    mov rax, 1              ; 1 = write
    mov rdi, 1              ; 1 = to stdout
    mov rsi, msg            ; msg to be display in rsi
    mov rdx, 13             ; length of the message
    syscall                 ; print

    mov rax, 60             ; 60 = exit
    mov rdi, 0              ; 0 = success exit code
    syscall                 ; exit
    