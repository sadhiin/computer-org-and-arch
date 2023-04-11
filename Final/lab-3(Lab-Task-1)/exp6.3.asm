.model small
.stack 100h
.data 
msg DB 0AH,0DH,'COMPARING ASCII CHARACTERS$'
msg1 db 10,13,'ENTER FIRST CHARACTER: $'
msg2 db 10,13,'ENTER SECOND CHARACTER: $' 
msg3 db 10, 13, 'AFTER COMPARING: $'

e db 10, 13, 'In else $'
n db 10, 13, 'Normal $'


.code   
main proc
    mov ax,@data
    mov ds, ax
    
    lea dx, msg
    mov ah,9
    int 21h
           
           
    lea dx, msg1
    mov ah,9
    int 21h
    
    
    mov ah,1
    int 21h
    mov bl, al
           
    
    lea dx, msg2
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov cl, al
    
    mov ah,2   
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    cmp bl,cl
    
    jnbe Else_   ; else 
       
    ;normal scenario    
    mov ah,2
    mov dl, bl
    int 21h   
           
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov dl, cl
    int 21h
    
    jmp exit
    
    Else_:        
        mov ah,2
        mov dl, cl
        int 21h 
        
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        mov dl, bl
        int 21h
        jmp exit
        

	exit: 
	    lea dx, msg3
        mov ah,9
        int 21h 
        
        mov ah,4ch
        int 21h
        main endp
end main