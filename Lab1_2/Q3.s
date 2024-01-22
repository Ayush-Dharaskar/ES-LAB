	AREA RESET, DATA, READONLY
	EXPORT __Vectors
__Vectors
    DCD 0x10001000 ; stack pointer value when stack is empty
    DCD Reset_Handler ; reset vector
    ALIGN
    AREA MYCODE, CODE, READONLY
    ENTRY
    EXPORT Reset_Handler
Reset_Handler
	LDR R0,=FIRST
	ADD R0,#12
	LDR R1,=SEC
	ADD R1,#12
	LDR R8,=RESULT
	ADD R8,#12
	
	LDR R2,[R0],#-4
	LDR R3,[R1],#-4
	SUBS R4,R2,R3
	STR R4,[R8]
	SUB R8,#4
	
	
	LDR R2,[R0],#-4
	LDR R3,[R1],#-4
	SBCS R4,R2,R3
	STR R4,[R8]
	SUB R8,#4
	
	LDR R2,[R0],#-4
	LDR R3,[R1],#-4
	SBCS R4,R2,R3
	STR R4,[R8]
	SUB R8,#4
	
	LDR R2,[R0],#-4	
	LDR R3,[R1],#-4
	SBCS R4,R2,R3
	STR R4,[R8]
	SUB R8,#4
	

	
	


STOP
    B STOP
FIRST DCD 0xF0101010,0xF1010101,0x10010011,0x00011011
SEC DCD 0x10101010,0x12341234,0x10010011,0x00011011
    AREA DATA, DATA, READWRITE
RESULT DCD 0
    