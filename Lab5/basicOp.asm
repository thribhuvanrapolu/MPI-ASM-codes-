%macro addTwo_numbers 2
    mov rax,%1;
    add rax,%2;
%endmacro

%macro subTwo_numbers 2
    mov rax,%1;
    sub rax,%2;
%endmacro

%macro mulTwo_numbers 2
    xor rdx,rdx;
    mov rax,%1;
    imul rax,%2;
%endmacro

%macro divTwo_numbers 2
    xor rdx,rdx
    mov rax,%1;
    mov rbx,%2;
    idiv rbx;
%endmacro

global basicOp
section .text
basicOp:
    push rbp;
    addTwo_numbers [rdi],[rdi+8];
    mov [rsi],rax;
    subTwo_numbers [rdi],[rdi+8];
    mov [rsi+8],rax;
    mulTwo_numbers [rdi],[rdi+8];
    mov [rsi+16],rax;
    mov [rsi+24],rdx;
    divTwo_numbers [rdi],[rdi+8];
    mov [rsi+32],rax;
    mov [rsi+40],rdx;
    pop rbp;
    ret;
