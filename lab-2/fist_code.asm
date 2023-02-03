.MODEL SMALL
.STACK 100H

.DATA

.CODE

MAIN PROC
    
    MOV BL 'A'
    
    
    MOV AH, 2 ;I WANT TO DISPLAY SOMETHING.
    MOV DL, BL
    ;display is done by DX registor.
    
    ;MOV DL a
    INT 21H  ;INTERAPT-21H : means i'm done with assigning value. show the thing. 
    ;MOV DL, B
    ;INT 21H
    
    
    
    
    
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP

END MAIN
