.model small
.stack 100h
.data

msg db 0Ah,0Dh,'Enter a number: $'
msg1 db 0Ah, 0Dh, 'Positive.$'
msg2 db 0Ah, 0Dh, 'Negative.$'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    
    ;mov dx, offset msg
    lea dx, msg
    mov ah, 9
    int 21h
    
    ; taking the input
    mov ah,1
    int 21h
    mov bl,al 

    ; assigning the cl to 0
    mov cl,0 
    cmp bl,cl
    
    jg positive
    jl negetive    
    
   
    ; conditional check and aditional stuff
    mov cx,1
    positive: 
        ;mov dx, offset msg1
        lea dx,msg1
        mov ah,9
        int 21h

        dec cx
        
        jg Exit
    
    negetive:
        ;mov dx, offset msg2
        lea dx,msg2
        mov ah,9
        int 21h
        dec cx
        
        jg Exit 

    Exit:
    MOV AH,4CH
    INT 21h


    MAIN ENDP
END MAIN