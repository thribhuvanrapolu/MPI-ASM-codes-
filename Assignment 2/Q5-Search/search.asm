global searchN
section .text

searchN:
    xor rax, rax;
    xor rcx, rcx;

search_loop:
    cmp rcx, rsi;          
    je  element_not_found;

    add rdi,$8;
    mov r8, [rdi]; 
    cmp r8, rdx; 
    je  element_found;

    inc  rcx;
    jmp  search_loop ;

element_found:
    mov rax, rcx;        
    add rax,$2;             
    ret

element_not_found:
    xor rax, -1; 
    ret
