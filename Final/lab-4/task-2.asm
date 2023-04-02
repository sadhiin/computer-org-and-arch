.model small
.stack 100h
.data   

msg1 db 10,13,'Task-2$' 
msg2 db 10,13,'ENTER A NUMBER: $'
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
    
    ;mov ah,1
    ;int 21h        
    ;mov dl, al
    
    cmp dl,'3'
    jl bellow
    
    cmp cl, '3'
    
    jl bellow
    
    bellow:
        lea dx,msg3
        mov ah,9                 
        int 21h
        
        mov ah,2
        mov dl, 'b'
        int 21h
        jmp exit 
        
          
    exit:             
        mov ah,4ch
        int 21h
        main endp
end main

