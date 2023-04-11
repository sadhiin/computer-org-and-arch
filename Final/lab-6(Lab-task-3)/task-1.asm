.model small
.stack 100h
.data   

msg1 db 10,13,'Task-1$' 
msg2 db 10,13,'ENTER A NUMBER: $'
msg3 db 10,13,'RESULT: $'  
newln db 10,13,'$'
.code

main proc
          
    mov ax,@data
    mov ds,ax
    lea dx,msg1
    mov ah,9                 
    int 21h                  
    
    lea dx,msg2
    mov ah,9                 
    int 21h
    
    mov ah,1
    int 21h        
    mov bl, al
    lea dx,newln
    mov ah,9                 
    int 21h 
    sub bl,30h
    
    test bl, 1
    je even
    
    
    odd:
        mov ah, 2
        mov dl, 'O'
        int 21h
        jmp exit
    
    even:
        mov ah,2
        mov dl, 'e'
        int 21h
        jmp exit
          
    exit:             
        mov ah,4ch
        int 21h
        main endp
end main

