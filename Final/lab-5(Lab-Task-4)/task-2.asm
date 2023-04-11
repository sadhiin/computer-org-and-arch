.model small
.stack 100h
.data           
    task db 0Ah,0Dh,'Program to show Hex value and no of set bit$'
    msg1 db 0Ah,0Dh,'Enter a character: $'  
    msg2 db 0Ah,0Dh,'The HEX code: $'
    newln db 0Ah, 0Dh,'$'
.code

main proc
          
    mov ax,@data
    mov ds,ax
    lea dx,task
    mov ah,9                 
    int 21h                  

    input:
        lea dx, msg1
        mov ah, 9
        int 21h
        
        mov ah, 1
        int 21h
        mov bl, al
        
        cmp bl,0Dh
        je exit
        
        lea dx, msg2
        mov ah, 9
        int 21h
        
        mov cx,4
        
        
        
     convert:
        mov dl, bh
        shr dl, 1
        shr dl, 1
        shr dl, 1
        shr dl, 1
        
        cmp dl, 9
        jbe num
        
        add dl, 55d
        
        jmp display
    
    num:
        add dl, 30h
       
    display:
        mov ah, 2
        int 21h
        
        rcl bx, 1
        rcl bx, 1
        rcl bx, 1
        rcl bx, 1
        
        loop convert
        
        jmp input
        
    exit:
        mov ah,4ch
        int 21h
        main endp
end main

