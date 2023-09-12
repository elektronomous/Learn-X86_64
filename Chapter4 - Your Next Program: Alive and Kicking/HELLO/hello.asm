; hello.asm
bits 64                 ; tell the assembler that this code is 64-bit

extern      printf      ; declare the function as external

section .data
    msg     db      "Hello, World!",0
    fmtstr  db      "This is our string: %s",10,0   ; print format
section .bss
section .text
    global main
main:
    push    rbp             ; function prologue
    mov     rbp, rsp        ; function prologue
    mov     rdi, fmtstr     ; first argument for printf 
    mov     rsi, msg        ; second argument for printf
    xor     rax, rax        ; no xmm registers
    call    printf          ; call the function

    mov     rsp, rbp            ; function epilogue
    pop     rbp                 ; function epilogue

    ; exit
    mov     rax, 60             ; 60 = exit
    mov     rdi, 0              ; 0 = success exit code
    syscall