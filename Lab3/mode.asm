global mode
section .text
mode:
    mov rax,[rdi];
    cmp rsi,$0;
    je finish;
    dec rsi;
    