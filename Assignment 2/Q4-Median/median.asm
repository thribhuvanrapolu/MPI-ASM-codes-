global medianN
section .text

medianN:
    mov rax,[rdi];
    cmp rsi,$1;
    je finish;

next:
    mov rbx,rsi;
    test rbx,1;
    jz even;
    jnz odd;


odd:
    mov rax,rsi;
    add rax,1;
    mov rbx,2;
    xor rdx,rdx;
    div rbx;
    mov rcx,rax;
    
    add rsi,1;




getelement:
    mov rax,[rdi];
    add rdi,$8;
    dec rsi;
    cmp rsi,rcx;
    jne getelement;
    je finish;



even:
    mov rax,rsi;
    mov rbx,$2;
    xor rdx,rdx;
    div rbx;
    mov rcx,rax;

    ; add rsi,$1;
    
getelementeven:
    dec rsi;
    mov rax,[rdi];
    add rdi,$8;
    cmp rsi,rcx;
    jne getelementeven;
    je addnextelement;
    
addnextelement:
    add rax,[rdi];
    mov rbx,$2;
    div rbx



finish:
    ret