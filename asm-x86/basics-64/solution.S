.intel_syntax noprefix

.global very_important_function
.text
.extern A
very_important_function:
    mov rcx, rdi
    mov r14, 0
    mov r12, A
instruct:
    push rcx
    lea rdi, [format_in]
    lea rsi, [input_var]
    mov rax, 0
    call scanf
    pop rcx

    movsxd rax, [input_var]
    movsxd r13, [r12 + 4 * r14]
    imul r13

    push rcx
    lea rdi, [format_out]
    mov rsi, rax
    mov rax, 0
    call printf
    pop rcx
   
    inc r14


loop instruct
ret

.data

format_in: 
    .string "%d"               
format_out:
    .string "%lld "            
input_var:
    .quad 0