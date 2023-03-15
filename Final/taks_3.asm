.model small
.stack 100h
.data 
msg DB 0AH,0DH,'Hex to decimal conversion$'
msg1 db 10,13,'ENTER A HEX DIGIT:$'
msg2 db 10,13,'IN DECIMAL IS IT:$'
msg3 db 10,13,'DO YOU WANT TO DO IT AGAIN?$'
msg4 db 10,13,'ILLEGAL CHARACTER- INPUT SHOULD BE 0-9 OR A-F:$'

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
    mov bl,al 
    
	cmp bl,'9'
	ja hex
	jb num
	je num

	hex:
		cmp bl,'F'
		ja illegal

		lea dx,msg2
		mov ah,9
		int 21h

		mov dl,49d
		mov ah,2
		int 21h

		sub bl,17d
		mov dl,bl
		mov ah,2
		int 21h

		jmp exit

         
	num:
	   cmp bl,'0'
	   jb illegal

	   lea dx,msg2
	   mov ah,9
	   int 21h

	   mov dl,bl
	   mov ah,2
	   int 21h


	illegal:
       lea dx,msg4
       mov ah,9
       int 21h



	exit:
        mov ah,4ch
        int 21h
        main endp
end main
