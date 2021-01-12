global _start
_start:
    mov eax, 16
    mov rbx, 13
    mov rcx, 9
    mov rdx, 99
    mov rsi, 7
    mov rdi, 3
    mov rbp, rsp
    xor eax, eax
    lea rbx, [0]
    loop $
    mov rdx, 0
    and esi, 0
    sub edi, edi
    push 0
    pop rbp
