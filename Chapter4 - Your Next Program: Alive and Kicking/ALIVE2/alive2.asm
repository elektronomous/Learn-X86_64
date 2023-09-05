; alise.asm
bits 64             ; tell the assembler that this code is 64-bit

section .data
    msg1        db  "Hello, World!",10,0        ; string with NL and 0
    msg1Len     equ $-msg1-1                    ; measure the length, minus the 0
    msg2        db  "Alive and Kicking!",10, 0  ; string with NL and 0
    msg2Len     equ $-msg2-1                    ; measure the length, minus the 0

    radius      dq 357                          ; no string, not displayable?
    pi          dq 3.14                         ; no string, not displayable?

section .bss

section .text
    global main
main:
    mov     rax, 1          ; 1 = to write
    mov     rdi, 1          ; 1 = to stdout
    mov     rsi, msg1       ; string to display
    mov     rdx, msg1Len    ; length of the string
    syscall                 ; display the string

    mov     rax, 1          ; 1 = to write
    mov     rdi, 1          ; 1 = to stdout
    mov     rsi, msg2       ; string to display
    mov     rdx, msg2Len    ; length of the string
    syscall                 ; display the string

    mov     rax, 60         ; 60 = exit
    mov     rdi, 0          ; 0 = success exit
    syscall                 ; quit 