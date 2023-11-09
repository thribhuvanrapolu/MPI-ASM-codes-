; nCr.asm
; 
; Program written in x86_64 Assembly to find
; n choose r (nCr/Combination)
;
; Input arguments
; 1st arg: rdi (n) [Present at [rbp-32] in AMD Ryzen 9 5900HX]
; 2nd arg: rsi (r) [Present at [rbp-24] in AMD Ryzen 9 5900HX]

global nCr
section .bss
extern fact
section .text

nCr:
    ; Push rbp to preserve the calling function's base pointer
    push rbp

    ; Load n (from [rbp-32]) and call fact subroutine to compute n!
    mov rcx, [rbp-32]
    call fact
    ; Store n! in r9
    mov r9, rax

    ; Load r (from [rbp-24]) and call fact to compute r!
    mov rcx, [rbp-24]
    call fact
    ; Store r! in r10
    mov r10, rax
    
    ; Calculate (n-r) and call fact to compute (n-r)!
    mov rcx, [rbp - 32]
    sub rcx, [rbp - 24]
    call fact
    ; Store (n-r)! in r11
    mov r11, rax

    ; Multiply r! and (n-r)!
    imul r10, r11

    ; Divide n! by the product of r! and (n-r)! to get nCr
    mov rax, r9
    xor rdx, rdx
    idiv r10

    ; Pop rbp to restore the previous base pointer
    pop rbp
    
    ; Return the result in rax
    ret
