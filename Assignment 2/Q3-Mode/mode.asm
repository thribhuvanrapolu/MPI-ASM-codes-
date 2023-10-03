global modeN
section .text

modeN:
    mov r10,[rdi];
    cmp rsi,$1;
    je finish;

    xor r8, r8   ; max count
    xor r9, r9   ; count

    mov r13,$1;i

i_loop:
    mov rbx,rdi; i    
    xor r9, r9   ; count

    cmp r13,rsi; check till we reach last statement
    je finish;
    
    inc r13;
    
    mov r14,$1;j
    mov rdx,rbx;j


j_loop:
    add rdx,$8;

    cmp r14,rsi;
    je check_and_update;
    
    inc r14;
    
    mov r11,[rdx];
    mov r12,[rbx];
    
    cmp r11,r12;
    je add_count;
    jne j_loop;


add_count:
    add r9,$1;
    jmp j_loop;


check_and_update:
    cmp r8,r9;
    jl update;
        
    add rdi,$8;
    jmp i_loop;


update:
    mov r8,r9;
    mov r10,[rdi];

    add rdi,$8;
    jmp i_loop;

    

finish:
    mov rax,r10;
    ret