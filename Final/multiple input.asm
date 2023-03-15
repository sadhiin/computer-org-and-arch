                 .MODEL SMALL
.STACK 100H
.CODE

MAIN PROC  ;PROC = Procedure
   
    MOV AH, 1   ; INPUT FUNCTION
    INT 21H     ; INT = Interupt
    MOV BL, AL
    INT 21H
   
    MOV BH, AL     
   
    MOV AH, 2
    MOV DL, 0AH 
    INT 21H        ; NEWLINE
    MOV DL, 0DH
    INT 21H
   
   
    MOV AH, 2   ; OUTPUT FUNCTION
    MOV DL, BL 
    INT 21H 
   
    MOV DL, BH
    INT 21H
   
   EXIT:
   MOV AH, 4CH
   INT 21H
   MAIN ENDP
END MAIN