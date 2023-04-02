.model small
.stack 100h
.data   

msg1 db 10,13,'Task-7$' 
msg2 db 10,13,'ENTER ANYTHING: $'
newln db 0Ah, 0Dh,"$"

.code

main proc
          
    mov ax,@data
    mov ds,ax
    lea dx,msg1
    mov ah,9                 
    int 21h                  
    ; new line
    lea dx, newln
    mov ah, 9
    int 21h
    
    mov cl, 0
    jmp input
    
    input:
        mov ah,1
        int 21h  
        
        inc cl 
        
        cmp cl,5
        je exit
        
        jmp input
        
          
          
    exit:             
        mov ah,4ch
        int 21h
        main endp
end main

