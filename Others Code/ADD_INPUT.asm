;INPUT A, B
;OUTPUT A + B

.MODEL SMALL
.STACK 100H
.DATA
    A DB ?
    B DB ?

.CODE
MAIN PROC
                  
    ; FIRST INPUT
    MOV AH, 1
    INT 21H
    
    MOV A, AL   
    SUB A, 48
    
    ; SECOND INPUT
    
    INT 21H
    MOV B, AL 
    SUB B, 48
    
    ; ADDING WITH A + B
    
    MOV BH, A
    ADD BH, B
    ADD BH,48
    
    MOV AH, 2 
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    MOV DL, BH
    INT 21H
    
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN