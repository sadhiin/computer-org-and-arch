org 100h
 
w:  db "?$"

msg1:    db  "THE SUM OF ", 24h
msg2:    db  " AND ", 24h
msg3:    db  " IS ", 24h

.data

.code
main proc
    mov dx,w
    mov ah,09h
    int 21h
    
    mov ah,1
    int 21h
    add al,48
    mov bl,al
            
    mov ah,1
    int 21h
    add al,48
    mov cl,al
              
    ; mew line
    mov ah,2
    mov dl, 0Ah
    int 21h
    mov dl, 0Dh
    int 21h
    
    ; first message
    mov dx, msg1
    mov ah,09h
    int 21h
    
    ; first input value
    mov ah,2 
    sub bl,48
    mov dl,bl
    int 21h
    
    ; second part of message
    mov dx,msg2
    mov ah, 09h
    int 21h
    
    ; Second input value
    mov ah,2 
    sub cl, 48
    mov dl,cl
    int 21h
 
    ; third part message
    mov dx, msg3
    mov ah,09h
    int 21h
     
    
    ;result printing
    
    add bl,cl
    sub bl,48
    
    mov ah,2
    mov dl, bl
    int 21h
          
    
    mov ah,4ch
    main endp
end main