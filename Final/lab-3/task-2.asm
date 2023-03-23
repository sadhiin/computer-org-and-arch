.model small
.stack 100h
.data

msg db 0Ah, 0Dh, "Task-2$"
newln db 0Ah, 0Dh,"$"

.code
main proc
     mov ax, @data
     mov ds, ax
     lea dx, msg
     mov ah, 9
     int 21h   
     
     MOV AH,1
     INT 21H
     MOV BL, AL
     
     CMP BL,'A'
     JE CARRIAGERETURN
     Ja LINEFEED
     
     JMP EXIT
     
     CARRIAGERETURN:
        
        MOV AH,2
        MOV DL, 0DH
        INT 21H
     
     LINEFEED: 
        CMP BL, 'B'
        je executelinefeed
        jmp EXIT
        
     executelinefeed:
        mov ah, 2
        mov dl, 0Ah
        int 21h
     
     EXIT:
        MOV AH, 4CH
        INT 21H
        MAIN ENDP
END MAIN