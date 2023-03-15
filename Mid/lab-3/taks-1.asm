.model small
.stack 100h

.data                               
other db "My name is: $"
myname db "Md. Shanjidul Islam Sadhin.$"

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx, other
    int 21h
    

    mov ah, 9
    lea dx, myname
    int 21h
    
    
    mov ah, 4ch
    int 21h
    main endp
end main