global subTwoR
section .text
subTwoR:
        movsd xmm0, [rdi];
        movsd xmm1,[rsi];
        subsd xmm0,xmm1;
        ret;