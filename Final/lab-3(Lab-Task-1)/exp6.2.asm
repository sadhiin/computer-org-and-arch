.model small
.stack 100h
.data 
msg DB 0AH,0DH,'ABSOLUTE VALUE$'
msg1 db 10,13,'ENTER A NUMBER:$'
msg2 db 10,13,'ABSOLUTE VLAUE IS: $'

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
    
     
    ; comapring with zero
	cmp ax,'0'
	jnl positiveNumber
	     
	neg ax
	lea dx,msg2
	mov ah,9
	int 21h

	mov dl,bl
	mov ah,2
	int 21h
    jmp exit
             
    ; for the postive number 
	positiveNumber:
	
	   lea dx,msg2
	   mov ah,9
	   int 21h

	   mov dl,bl
	   mov ah,2
	   int 21h
       
       jmp exit
       

	exit:
        mov ah,4ch
        int 21h
        main endp
end main