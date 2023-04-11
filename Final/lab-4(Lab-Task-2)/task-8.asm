.model small
.stack 100h
.data   

msg1 db 10,13,'Task-8$' 
msg2 db 10,13,'ENTER ANYTHING: $'  
msg3 db 10,13,'YOU ENTERED: $'
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
    
    mov ah, 1
    int 21h 
    
    
    cmp al, 2
    jae ifor
    jmp else

    
    ifor:
        ; checking the second condition
        cmp al,9
        jle ifcond
        jmp else
    ifcond:
        lea dx, msg2
        mov ah, 9
        int 21h
        
        mov ah,1
        int 21h
                     
        mov bl, al
        
        lea dx, msg3
        mov ah,9
        int 21h
        mov ah,2
        mov dl,bl
        int 21h 
        jmp exit 
    
    else:
        ; else condition
        lea dx,newln
        mov ah, 9
        int 21h
        
        cmp al,"a"
        jge charSmall
        cmp al, "A"
        jge charCapital
                     
    charSmall:
        cmp al,"z"
        jle print_C
        jmp print_N
        
    charCapital:   
        cmp al,"Z"
        jle print_C
        jmp print_N 
        
    print_C:
        mov ah,2
        mov dl,"c"
        int 21h
        jmp exit
        
    print_N:
        mov ah,2
        mov dl, "n"
        int 21h
        jmp exit
        
    exit:             
        mov ah,4ch
        int 21h
        main endp
end main

