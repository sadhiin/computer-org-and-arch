.model small
.stack 100h
.data

msg db 0Ah,0Dh,'Enter number: $'
msg1 db 0Ah,0Dh, 'Greater then 5.$'
msg2 db 0Ah,0Dh, 'Less then 5.$' 
msg3 db 0Ah,0Dh, 'Equal.$'

.code
main proc   
    
    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,9
    int 21h
    
    mov ah, 1
    int 21h
    mov bl,al
    
    mov cx,5
    
    
    ja Greter
    
    je Equal
    
    jb Less
    
    
    
    mov cx,1
    
    Equal:
        lea dx, msg3
        mov ah,9
        int 21h
        
        dec cx
        
        jg EXIT
   
    
    Less:
        lea dx, msg2
        mov ah,9
        int 21h
        
        dec cx
        jg EXIT
    
    Greter:
        lea dx, msg1
        mov ah,9
        int 21h
        
        dec cx
        jg EXIT
    
        
        
        EXIT:
            MOV AH,4CH
            INT 21h


    MAIN ENDP
END MAIN