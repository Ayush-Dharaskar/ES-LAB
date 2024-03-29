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
	MOV R0,#10
	MOV R1,#1
	
LOOP 
	MLA R2,R0,R1,R2
	SUBS R0,#1
	BNE LOOP
			
	
	
STOP
	B STOP
VALUE DCD 0X11111111, 0X22222222, 0X33333333, 0X44444444, 0X55555555, 0X66666666, 0X77777777, 0X88888888, 0X99999999, 0XAAAAAAAA
	AREA mydata, DATA, READWRITE
RES DCD 0
	END