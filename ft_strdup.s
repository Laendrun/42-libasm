; RDI => original string
; RDX => dest
; RSI => counter (i)

global	_ft_strdup
extern	_ft_strlen
extern	_malloc

section .text
_ft_strdup:								; rdi (const char *s)
	call	_ft_strlen					; rax => strlen(s)
	add		rax, 1						; add 1 to strlen(s)
	push	rdi
	mov		rdi, rax					; set the first param (rdi) to be len(s) + 1
	call	_malloc						; call malloc
	pop		rdi
	cmp		rax, 0						; check if malloc failed
	je		return_null					; if malloc failed, return NULL
	mov		rsi, 0						; i = 0
	jmp		comp

incr:
	inc		rsi

comp:
	cmp		BYTE [rdi + rsi], 0			; is s[i] == 0
	mov		dl, BYTE [rdi + rsi]		; tmp = s[i]
	mov		BYTE [rax + rsi], dl		; dest[i] = tmp
	jne		incr

return:
	ret

return_null:
	mov		rax, 0
	ret