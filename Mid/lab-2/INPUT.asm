.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    
    MOV AH,1 ; 1 IS FOR TAKING INPUT FROM USER. 
    INT 21H
    MOV BL, AL
    
; printing new line with carry
    MOV AH,2
    MOV DL, 0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
; displaying the input data
    MOV AL, 2
    MOV DL, BL
    INT 21H
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
