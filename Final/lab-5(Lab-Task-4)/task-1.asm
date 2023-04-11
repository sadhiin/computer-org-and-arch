.model small
.stack 100h
.data           
    task db 0Ah,0Dh,'Program to show binary value and no of set bit$'
    msg1 db 0Ah,0Dh,'Enter a character: $'  
    msg2 db 0Ah,0Dh,'The ASCII code: $'
    msg3 db 0Ah,0Dh,'ASCII code in Binary representation: $'
    msg4 db 0Ah,0Dh,'Number of 1 bits: $'
    newln db 0Ah, 0Dh,'$'
.code

main proc
          
    mov ax,@data
    mov ds,ax
    lea dx,msg1
    mov ah,9                 
    int 21h                  
    
    mov ah, 1
    int 21h
    
    mov bl, al
    
    lea dx, msg2
    mov ah, 9
    int 21h
    
    mov dl, bl
    mov ah, 2
    int 21h
    
    lea dx, msg3
    mov ah, 9
    int 21h
    
    mov cx, 8
    mov bh, 0 
    
    binary:
        shl bl,1
        jnc zero
        inc bh
        mov dl, 31h
        jmp display
        
    zero:
        mov dl, 30h
    
    display:
        mov ah,2
        int 21h
        
    loop binary ; printing the binary 
    
    
    add bh, 30h
    lea dx, msg4
    mov ah, 9
    int 21h
    
    mov dl, bh
    mov ah, 2
    int 21h
    

    mov ah,4ch
    int 21h
    main endp
end main

