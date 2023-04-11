.model small
.stack 100h
.data

MSG db 0Ah, 0Dh, "Task-3$"
NEWLN db 0Ah, 0Dh,"$"

.code
main proc
     mov ax, @data
     mov ds, ax
     lea dx, MSG
     mov ah, 9
     int 21h   
     
     ;TAKING INPUTS
     MOV AH,1
     INT 21H
     MOV CX,AX
     
     INT 21H
     MOV BX, AX
     
     INT 21H  
     
     LEA DX,NEWLN
     MOV AH, 9
     INT 21H
               
     ; EXCHANGING THE VALUE BETWEEN AX AND CX(THAT IS STORED EARLYER)
     XCHG AX,CX
     
     CMP AX, BX
     JL THEN_1 
     JG ELSE_1
               
               
     THEN_1:
        MOV AX,0
        JMP EXIT
     THEN_2:
        MOV BX, 0
        INT 21H
        JMP EXIT
     ELSE_1:
        CMP BX, CX
        JL THEN_2
        MOV CX,0
        JMP EXIT
     
     EXIT:
        MOV AH,2
        MOV DX, AX
        INT 21H
        
        LEA DX,NEWLN
        MOV AH, 9
        INT 21H
        
        MOV DX, BX
        INT 21H
        
        
        LEA DX,NEWLN
        MOV AH, 9
        INT 21H 
        MOV DX, CX
        INT 21H

        MOV AH, 4CH
        INT 21H
        MAIN ENDP
END MAIN