section .data
	;intialized data, global and static
	msg: db 'This is a simple math program', 10, 0

section .text
global _start
_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 31
	syscall
	jmp _exit

_exit:
	mov rax, 60
	mov rdi, 0
	syscall
