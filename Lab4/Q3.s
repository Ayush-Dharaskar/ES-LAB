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
	LDR R1, =5_14
	LDRB R2,[R0]
	AND R3,R2,#0x0F
	AND R4,R2,#0XF0
	;ROR R4,#4
	;MOV
	
	
	

STOP
	B STOP
	
NUM DCD 0x40
	AREA mydata, DATA, READWRITE
RES DCD 0
	END