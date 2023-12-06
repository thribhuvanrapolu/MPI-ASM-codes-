global addMat
section .text
addMat:
    cmp rcx,$0;
    jz finish;
next:
    mov rax,[rdi];
    add rax,[rsi];
    mov [rdx],rax;
    add rdi,$8;
    add rsi,$8;
    add rdx,$8;
    dec rcx;
    jmp addMat;

finish:
    ret;