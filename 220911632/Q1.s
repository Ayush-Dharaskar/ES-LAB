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
	LDR R3,=VALUE1
	LDR R4,=VALUE2
	LDR R5,=RESULT
	MOV R2, #4
	
	
loop
	MOV R6, R2
	SUBS R6,R6,#1
	LDR R0,[R3,R6,LSL #2]
	LDR R1,[R4,R6,LSL #2]
	ADDS R8 ,R0, R1
	STR R8,[R5,R6,LSL #2]
	SUBS R2,R2,#1
	BNE loop

	


	
	
STOP
	B STOP
	
VALUE1 DCD 0X11111110,0X11111111,0X11111112,0X11111113 ; First 32 bit number
VALUE2 DCD 0X22222220,0X22222221,0X22222222,0X22222223 ; Second 32 bit number 
	AREA data, DATA, READWRITE
RESULT DCD 0,0,0,0
