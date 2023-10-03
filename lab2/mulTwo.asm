global mulTwo
section .text
mulTwo:
        mov rax, rdi;
        mov rbx,rsi;
        mov rdx, $0;
        imul rbx;
        ret;