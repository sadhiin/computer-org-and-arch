.model small
.stack 100h
.data

msg db 0AH,0DH,'HELLO WORLD!$'
.code

main proc
    mov ax,@data
    mov ds, ax     
    
    mov cx,5
    
    ;print 5 times
          
    print_ntime:
        lea dx, msg
        mov ah,9
        int 21h
        dec cx      
    
    jg print_ntime
    
    mov ah,4ch
    int 21h
    main endp
end main