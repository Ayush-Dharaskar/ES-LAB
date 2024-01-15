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
	ADD R1,#36
	LDR R2,=VALUE1
	ADD R2,#56
	MOV R3,#10
	
loop
	
	LDR R4,[R1],#-4
	STR R4,[R2],#-4
	SUBS R3,#1
	BNE loop
	
	

	
	
STOP
	B STOP
	
VALUE1 DCD 1,2,3,4,5,6,7,8,9,10,0,0,0,0,0
	END

