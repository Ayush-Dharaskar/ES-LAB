	AREA RESET, DATA, READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x10001000 ; stack pointer value when stack is empty
	DCD Reset_Handler ; reset vector

    ALIGN
 
	AREA mycode, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
	
Reset_Handler
	MOV R5,#09
	LDR R0,=VALUE
	LDR R1,[R0],#04
LOOP
	LDR R3,[R0],#4
	ADDS R1,R1,R3
	SUBS R5,#01
	BNE LOOP
	LDR R0,=RESULT
	STR R1,[R0],#4
	STR R7,[R0]

	
STOP
	B STOP
	
VALUE DCD 1,2,3,4,5,6,7,8,9,10
	AREA data, DATA, READWRITE
RESULT DCD 0
