                                                          .model small
.stack 100h
.data   

msg1 db 10,13,'Task-5$' 
msg2 db 10,13,'Converting F to f $'
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
    
    mov bl, 'F' ; 01000110 -> f: 01100110
    
    or bl, 60h ; 01100000
    mov ah, 2
    mov dl,bl
    int 21h
    
                 
    mov ah,4ch
    int 21h
    main endp
end main

