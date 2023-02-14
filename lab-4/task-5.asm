.model small
.stack 100h
.data

msg db, 'Enter a charater: $'

.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah,1
    int 21h
    
    mov bl,al
    
    
    mov cx,50
    
    
    
    print_ntimes:
        mov ah,2
        mov dl,bl
        int 21h
        
        dec cx
    
    jg print_ntimes
    
    mov ah,4ch
    int 21h
    main endp
end main