	AREA    RESET, DATA, READONLY
    EXPORT  __Vectors

__Vectors 
	DCD  0x100000FF     ; stack pointer value when stack is empty
    DCD  Reset_Handler  ; reset vector
  
    ALIGN

	AREA mycode, CODE, READONLY
	EXPORT Reset_Handler
	ENTRY
Reset_Handler
	LDR R0,=NUM
	LDR R5,=RES
	LDR R1,[R0]
	AND R2,R1,#0x0F
	AND R3,R1,#0xF0
	CMP R2,#0x09
	ADDHI R2,#0x37
	ADDLO R2,#0x30
	
	ROR R3,#4
	CMP R3,#0x09
	ADDHI R3,#0x37
	ADDLO R3,#0x30
	
	MOV R4,R2
	LSL R4,#8
	ADD R4,R3
	STR R4,[R5]
	
	

STOP
	B STOP
	
NUM DCD 0x64
	AREA mydata, DATA, READWRITE
RES DCD 0
	END