global	_ft_read
extern	___error

section	.text
_ft_read:							; rdi (int fd), rsi (const void *buf), rdx (size_t count)
	mov			rax, 0x2000003
	syscall
	jc			ret_error
	ret

ret_error:
	mov			rdi, rax
	call		___error
	mov			[rax], rdi
	mov			rax, -1
	ret