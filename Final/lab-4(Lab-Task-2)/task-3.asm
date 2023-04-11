.model small
.stack 100h
.data   

msg1 db 10,13,'Task-3$' 
msg2 db 10,13,'ENTER A NUMBER[1 2 3]: $'
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
    je then
            
    cmp bl, '2'
    je else
    
    cmp bl, '3'
    
    je other
    
    then:
        lea dx,msg3
        mov ah,9                 
        int 21h
        
        mov bl,1
        add bl, 48

        mov cl,2
        add cl,48      
        
        add bl,cl
        sub bl,48

        mov ah, 2
        mov dl, bl
        int 21h
        
        jmp exit
    
    else:
        lea dx,msg3
        mov ah,9                 
        int 21h
        
        mov bl,4
        add bl, 48

        mov cl,3
        add cl,48      
        
        sub bl,cl
        add bl,48

        mov ah, 2
        mov dl, bl
        int 21h
        
        jmp exit
        
     other:
        lea dx,msg3
        mov ah,9                 
        int 21h
        
        mov ah, 2
        mov dl, bl
        int 21h
        
        jmp exit
            
          
    exit:             
        mov ah,4ch
        int 21h
        main endp
end main

