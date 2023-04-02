.model small
.stack 100h
.data   

msg1 db 10,13,'Task-5$' 
msg2 db 10,13,'ENTER A NUMBER[1 2 3]: $'
msg3 db 10,13,'$'  

.code

main proc
          
    mov ax,@data
    mov ds,ax
    lea dx,msg1
    mov ah,9                 
    int 21h                  
    ; new line
    lea dx, msg3
    mov ah, 9
    int 21h
    
    mov cx, 10
    
    print_1:
        mov ah, 2
        mov dl,'@'
        int 21h
        loop print_1
    ; new line
    lea dx, msg3
    mov ah, 9
    int 21h
    
    mov cx, 10
    print_2:
        mov ah, 2
        mov dl,'#'
        int 21h
        loop print_2    
    ; new line
    lea dx, msg3
    mov ah, 9
    int 21h
    
    mov cx, 10 
       
    print_3:
        mov ah, 2
        mov dl,'$'
        int 21h
        loop print_3       
          
    exit:             
        mov ah,4ch
        int 21h
        main endp
end main

