; hello2.asm
bits 64                             ; tell assembler that this code is 64-bit
section .data
    msg db      "hello, world",0
    NL  db      0xa                 ; ascii code for new line

section .bss
section .text
    global main

main:
    ; display msg
    mov rax, 1              ; 1 = write
    mov rdi, 1              ; 1 = to stdout
    mov rsi, msg            ; string to display
    mov rdx, 12             ; length of string, without 0
    syscall                 ; display the string

    ; display new line
    mov rax, 1              ; 1 = write
    mov rdi, 1              ; 1 = to stdout
    mov rsi, NL             ; new line to display
    mov rdx, 1              ; length of the new line
    syscall                 ; display the new line

    ; exit
    mov rax, 60             ; 60 = exit
    mov rdi, 0              ; 0 = success code
    syscall                 ; quit
