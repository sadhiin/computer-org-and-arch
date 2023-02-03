.MODEL SMALL
.STACK 100H

.DATA
;declaring a variable

VAR DB ?


.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV AL,1
    INT 21H
    MOV VAR, AL
    
    MOV AH,2
    MOV DL, 0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AL, 2
    MOV DL, VAR
    INT 21H
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
