.model small
.stack 100h

.data
n1 db ?
n2 db ?
msg1 db 'Input first number: $'
msg2 db 10,13,'input second number: $'
res db 0ah,0dh,'Result: $'


.code 
main proc
    
    mov ax, @data ;initializaion data segment
    mov ds,ax
    
    mov ah, 9 ; for printing string
    lea dx, msg1
    int 21h
    
    mov ah, 1
    int 21h
    sub al, 48
    mov n1, al
    
    mov ah, 9   
    lea dx, msg2 
    int 21h
    
    mov ah, 1
    int 21h
    sub al, 48
    mov n2, al
    
    mov ah, 9
    lea dx, res
    int 21h
    
    mov al, n1
    mul n2
    
    mov ah, 2
    add al, 48
    mov dl, al
    int 21h
    
    
    
    mov ah, 4ch
    int 21h
    main endp
end main
