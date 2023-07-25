; This works

global	_ft_write
extern	_ft_strlen
extern	___error

section .text
_ft_write:					; rdi (int fd), rsi (void const *s), rdx (size_t len)
	push	rdi				; save rdi
	mov		rdi, rsi
	call	_ft_strlen		; rax = ft_strlen(rdi)
	pop		rdi

	cmp		rdx, rax		; compare rax with the passed len
	jge		set_len			; if rdx >= rax then set rdx to be rax
							; in other cases, rdx will be the same and will only write len bytes

wr:
	mov		rax, 0x2000004
	syscall
	jc		ret_error
	ret						; return the value in rax

set_len:
	mov		rdx, rax
	jmp		wr

ret_error:
	mov			rdi, rax
	call		___error
	mov			[rax], rdi
	mov			rax, -1
	ret