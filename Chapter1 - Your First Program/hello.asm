; hello.asm
bits 64         ;; tell the compiler this mode 64-bit
section .data
    msg db      "Hello, World", 0
section .bss
section .text
    global main

main:
    mov     rax, 1      ;   1 = syscall to write
    mov     rdi, 1      ;   1 = to stdout
    mov     rsi, msg    ;   string to display in rsi
    mov     rdx, 12     ;   the length of the string, without 0
    syscall             ;   display the string

    ; exit
    mov    rax, 60     ; syscall for exit
    xor    rdi, rdi    ; exit code 0
    syscall
