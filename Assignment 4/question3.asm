global question3
section .text

question3:
    xor r9, r9
    xor r10, r10
    xor r11, r11
    xor r12, r12
    xor rdx, rdx

    cmp rsi, 0
    jne start
    mov rax, 1
    ret

start:
    mov r10, rdi
    mov r9, rsi
    mov r11, r10
    dec r11

numerator:
    dec r9
    cmp r9, 0
    je step
    call multiply   
    dec r11
    jmp numerator

multiply:
   
    xor rax, rax
    mov rcx, r10
    mov rbx, r11
    mul_loop:
        test rbx, 1  
        jz no_addition
        add rax, rcx  
    no_addition:
        shl rax, 1     
        shr rbx, 1      
        jnz mul_loop    
    mov r10, rax
    ret

step:
    mov r12, rsi
    mov r9, r12

fact:
    dec r9
    cmp r9, 1
    je step2
    call multiply  
    jmp fact

step2:

    mov rax, r10
    xor rdx, rdx
divide_loop:
    cmp rax, r12
    jl divide_done
    sub rax, r12
    inc rdx
    jmp divide_loop
divide_done:
    mov rax, rdx
    ret
  




