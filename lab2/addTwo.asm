global addTwo
section .text
addTwo:
        mov rax, rdi;
        mov rbx,rsi;
        add rax,rbx;
        ret;