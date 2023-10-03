global addTwoR
section .text
addTwoR:
        movsd xmm0, [rdi];
        movsd xmm1,[rsi];
        addsd xmm0,xmm1;
        ret;