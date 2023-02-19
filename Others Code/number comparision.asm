.model small
.stack 100h
.data
    msg1 db 0Ah, 0Dh, 'Enter Number: $'
    msg2 db 0Ah, 0Dh, 'Number is Positive.$'
    msg3 db 0Ah, 0Dh, 'Number is Negetive.$'
    msg4 db 0Ah, 0Dh, 'Number is Zero.$'
    
.code
main proc
    
    mov ax, @data
    mov ds, ax 
   
    ; display message 1
    
    ;mov dx, offset msg1 
    lea dx, msg1
    mov ah,9
    int 21h
    
    ; input number
    mov ah,1
    int 21h
    
    mov bl, al
    
    mov cl,030h ; assci code for < or >
    
    cmp bl, cl
    
    jg positive ; Jump if greater then zero
    jl negetive ; Jump if less then zero
    je zero     ; Jump if equal to zero                                     
    
    mov cx, 0
    positive:
        lea dx, msg2
        mov ah, 9
        int 21h
        dec cx
        jg Exit
        
    negetive:
        lea dx, msg3
        mov ah, 9
        int 21h
        dec cx
        jg Exit
    zero:
        lea dx, msg4
        mov ah, 9
        int 21h
        dec cx
        jg Exit
    
    
    Exit:
        MOV AH,4CH
        INT 21h


    MAIN ENDP
END MAIN 

