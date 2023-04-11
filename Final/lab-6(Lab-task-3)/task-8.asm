                                                          .model small
.stack 100h
.data   

msg1 db 10,13,'Task-8$' 
msg2 db 10,13,'Enter a right shift number: $'
msg3 db 10,13,'After shift: $'
newln db 10,13,'$'  

.code

main proc
          
    mov ax,@data
    mov ds,ax
    lea dx,msg1
    mov ah,9
    int 21h                 
    lea dx, msg2
    int 21h  
    
    mov ah, 1
    int 21h  
    
    sub al, 30h
    
    mov cl, al
    
    mov ah, 9
    lea dx, msg3
    int 21h   
    
    mov bl, 70h  ; assigning 'p'-> 70h to bl register
    
    ; after shift 1 time output will be '8'-> 38h 
    shr bl, cl
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    exit:             
        mov ah,4ch
        int 21h
        main endp
end main

