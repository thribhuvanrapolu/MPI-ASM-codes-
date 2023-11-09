global pro1
section .text
pro1:
    mov rax,rdi;
    mov rbx,rsi;
    xor r10,r10; answer
    mov r8,rax; 5
    mov r9,rbx;

a_square:
    add r8,rdi;
    dec rax;
    cmp rax,$1;
    je b_square;
    jne a_square;


b_square:
    add r9,rsi;
    dec rbx;
    cmp rbx,$1;
    je a2_b2;
    jne b_square;

a2_b2:
    sub r8,r9; a2-b2

finish:
    mov rax,r8;
    ret;

    

    

