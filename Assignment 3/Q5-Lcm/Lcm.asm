global Lcm
section .text

Lcm:
    mov r11,[rdi];
    cmp rsi,$1;
    je finish;


    
Lcm_1:
    dec rsi;
    cmp rsi,$0;
    jz finish;
    add rdi,$8;
    mov r12,[rdi];


Gcd_2:
    mov r8,r11;a or prev lcm
    mov r9,r12;b

    cmp r8,r9;
    jl minA;
    jge minB;
    
minB:
    mov r10,r9; r10 is minimum element
    jmp loop_for_a;

minA:
    mov r10,r8; 
    jmp loop_for_a;


loop_for_a:
    cmp r10,$0;
    jz finish_loop;

    mov rax, r8;
    mov rbx,r10;
    mov rdx,$0;
    idiv rbx;

    cmp rdx,$0;
    jz loop_for_b;
    jnz loop_not_done;
    


loop_for_b:

    mov rax, r9;
    mov rbx,r10;
    mov rdx,$0;
    idiv rbx;

    cmp rdx,$0;
    jz finish_loop;
    jnz loop_not_done;


loop_not_done:
    sub r10,$1;
    jmp loop_for_a;



finish_loop:
    mov r11,r10;
    jmp Lcm_cal;


Lcm_cal:
    mov rax,r8; prev gcd or a
    mov rbx,r9;b
    mov rdx, $0;
    imul rbx;

    mov rax,rax; store a*b in rax 
    mov rbx,r11;
    div rbx;

    mov r11,rax;
    jmp Lcm_1;




finish:
    mov rax,r11;
    ret
