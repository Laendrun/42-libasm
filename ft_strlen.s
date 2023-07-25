; This works

global	_ft_strlen

section	.text
_ft_strlen:
	mov		rax, 0					; i = 0
	jmp		comp

incr:
	inc		rax						; i++

comp:
	cmp		BYTE [rdi + rax], 0		; is s[i] == 0
	jne		incr					; if s[i] != 0 -> i++

done:
	ret								; return i
									; return values are stored in rax