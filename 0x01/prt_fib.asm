global _start
section .text
_start:
    mov rax, 0                  ;seed fibonacci
    mov rdx, 1
    mov rcx, 0x15
fib:
    xadd rax, rdx
    push rax
    push rdx
    push rcx
    xor rcx, rcx
    mov rbx, rax
strlen:
    test rax, rax
    je build_stack
    xor rdx, rdx
    div dword [ten]
    inc rcx                     ;strlen
    jmp strlen
build_stack:
    inc rcx
    sub rsp, rcx
    mov rdi, rcx                ;save strlen
    dec rcx
    mov byte [rsp + rcx], 0xa
    dec rcx
    mov rax, rbx
build_num_str:
    xor rdx, rdx
    div dword [ten]
    add rdx, 48                 ;convert int to ascii number
    mov byte [rsp + rcx*1], dl
    dec rcx
    test rax, rax
    jne build_num_str
print:
    mov rdx, rdi                ;strlen
    mov rax, 1                  ;write syscall
    mov rdi, 1                  ;stdout fd
    mov rsi, rsp                ;ptr to string
    syscall 
repeat:
    add rsp, rdx
    pop rcx
    pop rdx
    pop rax
    loop fib                    ;loop based on rcx value
exit:
    mov rax, 60
    syscall
ten:
    dd 10
