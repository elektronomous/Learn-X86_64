; alive3.asm
bits 64             ; tell the assembler that this code is 64-bit

extern      printf  ; declare the function as external

section .data
    msg1    db      "Hello, World!",0
    msg2    db      "Alive and Kicking!",0
    radius  dd      357
    pi      dq      3.14

    fmtstr  db      "%s",10,0       ; format for printing a string
    fmtflt  db      "%1f",10,0      ; format for printing a float
    fmtint  db      "%d",10,0       ; format for printing an integer
section .bss
section .text
    global main
main:
    push        rbp                 ; function prologue
    mov         rbp, rsp            ; function prologue
    
    ; print msg1
    xor     rax, rax        ; no floating point
    mov     rdi, fmtstr     ; first argument for printf
    mov     rsi, msg1       ; second argument for printf
    call    printf

    ; print msg2
    xor     rax, rax        ; no floating point
    mov     rdi, fmtstr     ; first argument for printf
    mov     rsi, msg2       ; second argument for printf
    call    printf

    ; print radius
    xor     rax, rax        ; no floating point
    mov     rdi, fmtint     ; first argument for printf
    mov     rsi, [radius]   ; pass the contents address of radius
    call    printf

    ; print pi
    mov     rax, 1          ; 1 xmm register used
    mov     rdi, fmtflt     ; first argument for printf
    movq    xmm0, [pi]      ; second argument for printf
    call    printf

    ; exit
    mov     rsp, rbp        ; function epilogue
    pop     rbp             ; function epilogue
    ret