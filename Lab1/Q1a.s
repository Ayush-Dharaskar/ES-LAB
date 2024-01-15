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
	LDR R1,=VALUE1
	LDR R2,=RESULT

	MOV R4, #10
	
	
loop
	LDR R3,[R1],#4
	STR R3,[R2],#4
	SUBS R4,#1
	BNE loop

	


	
	
STOP
	B STOP
	
VALUE1 DCD 0x1,0x2,0x3,0x4,0x5,0x6,0x7,0x8,0x9,0x10
	AREA data, DATA, READWRITE
RESULT DCD 0,0,0,0,0,0,0,0,0,0
