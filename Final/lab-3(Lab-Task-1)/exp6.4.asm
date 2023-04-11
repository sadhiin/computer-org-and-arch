.model small
.stack 100h
.data 
msg DB 0AH,0DH,'SWITCH CASE$'    
msg1 db 10,13,'ENTER VALUE FOR AX REGISTOR: $'
msg2 db 10,13,'VALUE IN BX REGISTOR: $'

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
    
    ;checking what value in ax     
    mov ah,2
    mov dx, ax
    int 21h
	    
	mov bx, ax
	
	mov cx,'0'
    cmp bx,cx  
    
    je zero
    jl negetive
    jg positive

    negetive:
        mov bx,'-1'
        jmp exit
    
    zero:
        mov bx, '0'
        jmp exit
    
    positive:
        mov bx, '1'
        jmp exit
    
	exit:      
	    lea dx, msg2
        mov ah,9
        int 21h
	    mov ah,2
	    mov dx, bx
	    int 21h
        mov ah,4ch
        int 21h
        main endp
end main