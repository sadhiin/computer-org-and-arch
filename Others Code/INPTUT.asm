.MODEL SMALL
.STACK 100H
.DATA


.CODE
MAIN PROC
    
    MOV AH,1    ; FOR INPUT 
    INT 21H     ; CREATING THE INTERAPT 
    
    ; INPUT IS STORED IN 'AL' REGISTER
 
    MOV AH, 2
    MOV DL, AL
    INT 21H
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN