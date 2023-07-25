global	_ft_strcmp

section	.text
_ft_strcmp:									; rdi (const char *s1), rsi (const char *s2)
	mov		rdx, 0							; i = 0
	jmp		comp

incr:
	inc		rdx

comp:
	cmp		BYTE [rdi + rdx], 0
	je		check
	cmp		BYTE [rsi + rdx], 0
	je		check
	mov		cl, BYTE [rdi + rdx]
	mov		dl, BYTE [rsi + rdx]
	cmp		cl, dl
	je		incr

check:
	cmp		rsi, rdi
	je		equal
	jl		smaller							; s1 < s2
	jg		greater							; s1 > s2

equal:
	mov		rax, 0
	ret

smaller:
	mov		rax, -1
	ret

greater:
	mov		rax, 1
	ret