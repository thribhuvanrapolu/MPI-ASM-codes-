global Prime
section .text

Prime:
    xor r10,r10; count
    cmp rsi,$0;
    je finish;
    mov rcx,[rdi]




next1:
    cmp rcx,$0; if num is 0
    jz next2; 
    cmp rcx,$1; if num is 1
    jz next2;

    cmp rcx,$2; if num is 2
    jz yesCheckPrime;
    
    cmp rcx,$3;
    jz yesCheckPrime;
    
    mov r8,$1;
    
    mov r9,rcx;
    sub r9,$1;
    


CheckPrime:
    add r8,$1;
    
    mov rax, rcx;
    mov rbx,r8;
    mov rdx,$0;
    idiv rbx;
    

    cmp rdx,$0;
    jz next2;


    cmp r8,r9;
    je yesCheckPrime;
    jne CheckPrime;




yesCheckPrime:
    add r10,$1;
    jmp next2;


next2:
    dec rsi;
    cmp rsi,$0;
    jz finish;
    add rdi,$8;
    mov rcx,[rdi];
    jmp next1;


finish:
    mov rax,r10;
    ret
