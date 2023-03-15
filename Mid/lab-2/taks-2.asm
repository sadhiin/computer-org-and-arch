.MODEL SMALL
.STACK 100H

.DATA
;declaring a variable


.CODE
MAIN PROC 
        ; Task - 2
        ; Math oparetion of two numbers
    
    MOV BL, 2
    MOV CL, 3
    
        ; ADDITION 
    ADD BL, CL
        ; DIPLAY
    ADD BL, 48 
    MOV AH,2
    MOV DL, BL
    INT 21H
   
    MOV AH,2
    MOV DL, 0AH
    INT 21H
    MOV DL,0DH
    INT 21H
        ; SUBTRACTION
    SUB BL, CL    
    MOV AH, 2 
    
    ;ADD BL, 48
    
    MOV DL, BL
    INT 21H
           
    MOV DL, 0AH
    INT 21H
    
    MOV DL, 0DH 
    
    INT 21H
        ; MULTIPLACTION
    MOV BL, 2
    MOV CL, 6
        
    MUL BL  
    
    MOV AH,2 
    
    ADD CL, 48
    
    MOV DL, CL
    INT 21H

    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
RET