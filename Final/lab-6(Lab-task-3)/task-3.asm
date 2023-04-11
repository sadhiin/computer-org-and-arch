.model small
.stack 100h
.data   

msg1 db 10,13,'Task-2$'  
msg2 db 10,13,'Enter (a), (o), (c) for set, clear, and complemnt respectivly: $' 
 
newln db 10,13,'$'
.code

main proc
          
    mov ax,@data
    mov ds,ax
    lea dx,msg1
    mov ah,9                 
    int 21h                  
    
    mov bl, 4h ; 
    
    ; seting 3rd and 5th bit
    
    or bl,14h  ; 00010100 
    
    mov ah,2
    mov dl, bl
    int 21h
          
    exit:           
        mov ah,4ch
        int 21h
        main endp
end main