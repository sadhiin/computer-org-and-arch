.model small
.stack 100h
.data

num db 49
CHAR db 'A'
msg db "my name is sadhin.$"


.code

main proc
    mov ax, @data
    mov ds, ax
    
    
    mov ah, 2
    mov dl, num
    int 21h
    
    
    ;new line
    mov ah,2
    mov dl,0Ah
    int 21h
    mov dl, 0Dh
    int 21h
 
    ;mov ah,2
    MOV DL, CHAR
    INT 21H
    
    mov ah, 4ch
    int 21h
    main endp 
 
end main