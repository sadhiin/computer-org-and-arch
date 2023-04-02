.model small
.stack 100h
.data   

msg1 db 10,13,'Task-1$' 
msg2 db 10,13,'ENTER NUMBER [1 2 3 4]: $'
msg3 db 10,13,'RESULT: $'  

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
    
    cmp bl,'1'
    je odd
    
    cmp bl, '3'
    je odd
    
    cmp bl, '2'
    je even
    
    cmp bl,'4'
    je even
    
    odd:
        lea dx,msg3
        mov ah,9                 
        int 21h
        
        mov ah,2
        mov dl, 'o'
        int 21h
        jmp exit 
        
    even:
        lea dx,msg3
        mov ah,9                 
        int 21h
        mov ah,2
        mov dl, 'e'
        int 21h
          
    exit:             
        mov ah,4ch
        int 21h
        main endp
end main

