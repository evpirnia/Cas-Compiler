%include "asm_io.inc"
segment .data
segment .text
	global asm_main
asm_main:
	enter 0,0
	pusha
	mov eax, 1
	call print_int
	call print_nl
	mov eax, 2
	call print_int
	call print_nl
	mov eax, 3
	call print_int
	call print_nl
	mov eax, 4
	call print_int
	call print_nl
	mov eax, 5
	call print_int
	call print_nl
	popa
	mov eax,0
	leave
	ret
