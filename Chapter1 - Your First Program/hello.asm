; hello.asm
bits 64         ;; tell the compiler this mode 64-bit
section .data
    msg db      "Hello, World", 0
section .bss
section .text
    global main

main:
    mov     rax, 1      ;   1 = syscall to write
    mov     rdi, 0      ;   0 = write to standard output
    mov     rdx, 12     ;   msg length
    mov     rsi, msg    ;   msg to be display
    syscall

    ; exit
    mov    rax, 60     ; syscall for exit
    xor    rdi, rdi    ; exit code 0
    syscall
