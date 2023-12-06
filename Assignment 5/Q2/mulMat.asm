section .text
global mulMat

mulMat:
    mov r14,rdx;mov address of c into r14
    mov r15,rcx;size of n
    mov r8,0;i

i_loop:
    mov r9,0;j
    cmp r8,r15;
    je finish;
    jne j_loop;

i_inc:
    inc r8;
    jmp i_loop;

j_loop:
    mov r10,0;k
    cmp r9,r15;
    je i_inc;
    jne k_loop;

j_inc:
    inc r9;
    jmp j_loop;

k_loop:
    cmp r10,r15;
    je j_inc;
    jne multiply;

multiply:

    ;i*n+j
    mov rax,r8;
    mov rbx,r15;
    mov rdx,$0;
    imul rbx;
    add rax,r9; i*n+j
    mov rbx,$8;
    imul rbx;
    mov r11,rax;(i*n+j)*8
    add r11,r14;

    ;i*n+k
    mov rax,r8;
    mov rbx,r15;
    mov rdx,$0;
    imul rbx;
    add rax,r10;i*n+k
    mov rbx,$8;
    imul rbx;
    mov r12,rax; i*n+k*8
    add r12,rdi;

    ;k*n+j
    mov rax,r10;
    mov rbx,r15;
    mov rdx,$0;
    imul rbx;
    add rax,r9;k*n+j
    mov rbx,$8;
    imul rbx;
    mov r13,rax; (k*n+j)*8
    add r13,rsi;


    mov rax,[r12];
    mov rbx,[r13];
    imul rbx;
    add [r11],rax; 


    inc r10;
    jmp k_loop;


finish:
    ret;