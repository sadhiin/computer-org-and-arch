.MODEL SMALL
.STACK 100H

.DATA
;declaring a variable
VAL_1 DB ?
VAL_2 DB ?

.CODE
MAIN PROC 
        ; Task - 3
        ; Math oparetion of two numbers input
    
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 1
    INT 21H
    MOV VAL_1, AL
                
                
    MOV AH, 1
    INT 21H
    MOV VAL_2, AL
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    
    ADD VAL_1, VAL_2
    MOV AL, 2
    ADD VAL_1,48
    
    MOV DL, VAL_1
    INT 21H
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
RET