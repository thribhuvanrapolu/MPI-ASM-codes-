global divTwo
section .text
divTwo:
        mov rax, rdi;
        mov rbx,rsi;
        div rbx;
        ret;