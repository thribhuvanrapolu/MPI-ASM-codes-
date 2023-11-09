global pro3
section .text
pro3:
    mov rax,rdi;
    mov rbx,rsi;
    xor r10,r10; 
    
    mov r8,rax; A!
    
    mov r9,rax;
    dec r9;

    mov r10,rax;
    dec r10;



    mov r11,rbx;B!
    
    mov r12,rbx;
    dec r12;

    mov r13,rbx;
    dec r13;





a_loop:
    add r8,rax;
    dec r9;
    cmp r9,$1;
    je a_temp;
    jne a_loop;

a_temp:
    mov rax,r8;
    dec r10;
    mov r9,r10;
    cmp r9,$1;
    jg a_loop
    

b_loop:
    add r11,rbx;
    dec r12;
    cmp r12,$1;
    je b_temp;
    jne b_loop;

b_temp:
    mov rbx,r11;
    dec r13;
    mov r12,r13;
    cmp r12,$1;
    jg b_loop


a_fac_b_fac:
    mov rcx,r8; A!
    mov rdx,r11; B!



a_b_loop_temp:
    mov r8,rdi;
    sub r8,rsi;  a-b
    mov rax,r8;

    mov r9,r8;
    dec r9;

    mov r10,r8;
    dec r10;

a_b_loop:
    add r8,rax;
    dec r9;
    cmp r9,$1;
    je a_b_temp;
    jne a_b_loop;

a_b_temp:
    mov rax,r8;
    dec r10;
    mov r9,r10;
    cmp r9,$1;
    jg a_b_loop;



b_fac_mul_a_b_fac_temp:
    mov r9,r8;  rdx*r8
    ; add rdx,r8;
    

b_fac_mul_a_b_fac:
    add rdx,r8;
    dec r9;
    cmp r9,$1;
    jne b_fac_mul_a_b_fac;
    xor r10,r10;


Div:
    ; rcx/rdx
    sub rcx,rdx;
    inc r10;
    cmp rcx,$0;
    jg Div;
    jle finish;

finish:
    mov rax,rcx;
    ret;

    

    

