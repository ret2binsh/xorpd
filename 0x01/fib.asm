global _start
_start:
    mov rax, 0
    mov rdx, 1
.loop:
	xadd rax, rdx
    loop .loop
