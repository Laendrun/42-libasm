global	_helloWorld					; set the global name for the function so it is usable outside of this file

section .text						; all the code is written in the .text section
_helloWorld:						; basically the same thing as writing void helloWorld(void) in C
									; Preparing the arguments for the system call
	mov		rax, 0x2000004			; load the system instruction in the RAX register (write)
	mov		rdi, 1					; load the file descriptor number we want to write to in the RDI register
	mov		rsi, msg				; load the string we want to write in the RSI register
	mov		rdx, msg.len			; load the string length in the RDX register
	syscall							; call the kernel to execute what was set up before
									; what we did above is basically what we would have written like this in C
									; write(1, &msg, 10)
	ret
	mov		rax, 0x2000001			; load the system instruction in the RAX register (exit)
	mov		rdi, 0					; load the parameter of system instruction in RDI register (like doing exit(0) in C)
	syscall							; call the kernel to execute what we set up before

section .data

msg:	db	"Hello World!", 10		; the string we want to write followed by the newline ascii code (10)
.len	equ	$ - msg					; calculating the length of the string