
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, 9d
mov bx, 5d
sub ax,bx
   


mov ax, 2d
mov bx,3d
mov cx, ax
mov ax,bx
mov bx,cx

ret


