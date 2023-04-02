.model small
.stack 100h
.data   

msg1 db 10,13,'ENTER NUMBER: $'
msg2 db 10,13,'YOU ENTERED: $'  

.code

main proc
          
    mov ax,@data
    mov ds,ax
    lea dx,msg1
    mov ah,9
    int 21h
    mov ah,1
    int 21h
                 
    mov bl, al
    
    lea dx, msg2
    mov ah,9
    int 21h
    mov ah,2
    mov dl,bl
    int 21h             
                 
                 
                 
    mov ah,4ch
    int 21h
    main endp
end main

