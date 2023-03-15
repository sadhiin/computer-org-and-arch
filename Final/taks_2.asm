.MODEL SMALL
.STACK 100h
.DATA

MSG DB 0AH,0DH,'Printing all chapital & small leter$'
newln DB 0DH,0AH,"$";


.code
main proc
    mov ax,@data
    mov ds, ax
    
    lea dx, msg
    mov ah,9
    int 21h
    
    ;new line
    lea dx, NEWLN
    mov ah,9
    int 21h
    
    ; initialaization   
    mov cx, 26
	mov ah, 2
	mov dl,65
	

    uppercase: 
        mov ah,2
        int 21h
        inc dl
        loop uppercase
    
    ;new line
    lea dx, NEWLN
    mov ah,9
    int 21h
    
    mov cx, 26
    mov dl, 97
    
    lowercase:
        mov ah,2
        int 21h
        inc dl
        loop lowercase
    
    jmp EXIT
    
    EXIT:
        mov ah,4ch
        int 21h
        main endp
end main

