global addMat
section .text
addMat:
    cmp rcx,$0;
    jz finish;
next:
    vmovdqu ymm0,[rdi];
    vpaddq ymm0,[rsi];
    vmovdqu [rdx],ymm0;
    add rdi,32;
    add rsi,32;
    add rdx,32;
    sub rcx,4;
    jnz next;

finish:
    ret;