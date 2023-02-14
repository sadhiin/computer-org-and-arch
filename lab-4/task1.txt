.MODEL SMALL
.STACK 100h
.DATA

MSG DB 0AH,0DH,'HELLO WORLD$'

.code
main proc
    mov ax,@data
    mov ds, ax
    
    print_loop:
        lea dx, msg
        mov ah,9
        int 21h
        jmp print_loop
    
    
    mov ah,4ch
    int 21h
    main endp
end main
