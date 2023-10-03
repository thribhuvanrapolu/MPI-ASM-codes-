global subTwo
section .text
subTwo:
        mov rax, rdi;
        mov rbx,rsi;
        sub rax,rbx;
        ret;