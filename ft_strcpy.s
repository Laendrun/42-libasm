global	_ft_strcpy

section	.text
_ft_strcpy:								; rdi (char *dst), rsi (const char *src)
	mov		rax, 0						; i = 0
	jmp		comp

incr:
	inc		rax							; i++

comp:
	cmp		BYTE [rsi + rax], 0			; is src[i] == 0
	mov		dl, BYTE [rsi + rax]		; dst[i] = src[i]
	mov		BYTE [rdi + rax], dl		
	jne		incr						; if src[i] != 0 -> i++

done:
	inc		rax
	mov		BYTE [rdi + rax], 0
	mov		rax, rdi
	ret									; return dst