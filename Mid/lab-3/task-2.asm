.model small
.stack 100h

.data

f db "?$"

ms1 db "THE SUM OF $"
ms2 db " AND $"
ms3 db " IS $"


.code 
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah,9
    lea dx,f
    int 21h
    
    mov ah,1
    int 21h
    add al,48
    mov bl,al
    
    mov ah,1
    int 21h
    add al,48
    mov cl,al
    
    mov ah,2
    mov dx, 0Ah
    int 21h
    mov dx, 0Dh
    int 21h
           
    
    mov ah,9
    lea dx,ms1
    int 21h
    
    
    mov ah,2 
    sub bl,48
    mov dl,bl
    int 21h
    
    mov ah,9
    lea dx, ms2
    int 21h
    
    mov ah,2 
    sub cl,48
    mov dl,cl
    
    mov ah,9
    lea dx, ms3
    int 21h
    
    add bl, cl
    
    mov ah,2
    sub bl,48
    mov dl, bl
    int 21h

    mov ah,4ch
    int 21h
    main endp
end main