global _start
_start:
    mov rax, 0
    mov rdx, 1
    mov rcx, 5         ;loop counter
.loop:
    xadd rax, rdx
    loop .loop
