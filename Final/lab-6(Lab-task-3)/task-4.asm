                                                          .model small
.stack 100h
.data   

msg1 db 10,13,'Task-4$' 
msg2 db 10,13,'Converting f to F $'
newln db 10,13,'$'  

.code

main proc
          
    mov ax,@data
    mov ds,ax
    lea dx,msg1
    mov ah,9
    int 21h                 
    lea dx, msg2
    int 21h 
    lea dx, newln
    int 21h
    
    mov bl, 'f'
    
    and bl, 0DFh
    mov ah, 2
    mov dl,bl
    int 21h
    
                 
    mov ah,4ch
    int 21h
    main endp
end main

