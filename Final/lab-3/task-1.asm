.model small
.stack 100h
.data

msg db 0Ah, 0Dh, "Task-1$"
newln db 0Ah, 0Dh,"$"

.code
main proc
     mov ax, @data
     mov ds, ax
     lea dx, msg
     mov ah, 9
     int 21h   
     
     lea dx, newln
     int 21h 
     mov ah,1
     int 21h
     
     
     cmp al,'A'
     jae condition1
     jmp normal
     
     lea dx, newln
     mov ah, 9
     int 21h
     condition1:
        mov cl,'5'
        lea dx, newln
        mov ah, 9
        int 21h
        mov ah,2
        mov dl,cl
        int 21h
        jmp exit
     normal: 
        lea dx, newln
        mov ah, 9
        int 21h
        mov cl, '6'
        mov ah,2
        mov dl,cl
        int 21h
        jmp exit
     
     exit:
        mov ah, 4ch
        int 21h
        main endp
end main
    