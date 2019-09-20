	.cpu cortex-m0
	.text
	.align 1
	.global application

text:
	.asciz "Hello world, the ANSWER is 42! @[]`{}~\n"

application:
	PUSH {LR}
	LDR R0, =text
	BL print_asciz
	POP {PC}