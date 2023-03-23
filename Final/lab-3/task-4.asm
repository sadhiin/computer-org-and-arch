.model small
.stack 100h
.data

MSG db 0Ah, 0Dh, "Task-4$"
MSG2 DB 0AH, 0DH, "ENTER ANYTHING: $"
ASK DB 0AH, 0DH, "WANTS TO DO IT AGAIN? TYPE (y/n): $"
NEWLN db 0Ah, 0Dh,"$"
INV db 0Ah, 0Dh,"ILLIGAL INPUT"  
MSG3 db 0Ah, 0Dh, "EXITING THE PROGRAM$"
.code
main proc
     mov ax, @data
     mov ds, ax
     lea dx, MSG
     mov ah, 9
     int 21h   
     
     ;TAKING INPUTS
     
     JMP GO
     
     
     GO:
        MOV AH,9
        LEA DX, MSG2
        INT 21H 
        
        MOV AH, 1
        INT 21H 
        MOV BL, AL
                 
        MOV AH,9
        LEA DX, NEWLN
        INT 21H 
 
        MOV AH, 2
        MOV DL, BL
        INT 21H
        
        JMP AGAIN
        
     AGAIN:
        MOV AH,9
        LEA DX, ASK
        INT 21H
        
        MOV AH,1
        INT 21H
        MOV BL, AL 
        
        
        CMP BL,"Y"
        JE GO
        CMP BL,"y"
        JE GO 
        
        
        CMP BL,"N"
        JMP EXIT
        CMP BL, "n"
        JMP EXIT
        
        CMP BL, "A" 
        JA ILLIGAL
        
        CMP BL,"Z"
        JL ILLIGAL
        
        CMP BL, "a"
        JNGE ILLIGAL
        CMP BL, "z"
        JA ILLIGAL 
        
        
     ILLIGAL:
        LEA DX, INV
        MOV AH, 9
        INT 21H
        
        JMP EXIT
     
     EXIT:  
        LEA DX, MSG3
        MOV AH, 9
        INT 21H
        
        MOV AH, 4CH
        INT 21H
        MAIN ENDP
END MAIN