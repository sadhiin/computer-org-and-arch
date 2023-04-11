.model small
.stack 100h
.data   

msg1 db 10,13,'Task-2$'  
msg2 db 10,13,'Enter (a), (o), (c) for set, clear, and complemnt respectivly: $' 
 
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
    mov bl, 25h ; in binary 00100101
    
    mov ah, 1
    int 21h
    
    cmp al,'a'
    je set
    cmp al, 'o'
    je clear
    cmp al, 'c'
    je complement
    
     
    set:
        ; seting a bit
        or bl,42h  ;01000010
        jmp exit
    
    clear:
        ; clearing the bit 
        and bl,20h ;00100000
        jmp exit
    
    complement:
        ; complementing the bit
        xor bl,5Ah ;01011010
        jmp exit
          
    exit:
        mov ah, 2
        mov dl, bl
        int 21h             
        mov ah,4ch
        int 21h
        main endp
end main