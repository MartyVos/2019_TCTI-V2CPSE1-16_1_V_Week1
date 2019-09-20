	.cpu cortex-m0
	.text
	.align 1
	.global convert

convert:
	PUSH {LR}
	MOV R1, #0x20
	CMP R0, #'A'
	BLT done
	CMP R0, #'z'
	BGT done
	CMP R0, #'a'
	BGE swap
	CMP R0, #'Z'
	BLE swap
	B done

swap:
	EOR R0, R1

done:
	POP {PC}