.MODEL SMALL
.STACK 100H

.DATA
;declaring a variable
VAL_1 DB ?
VAL_2 DB ?

.CODE
MAIN PROC 
        ; Task - 3
        ; Math oparetion of two numbers input
    
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 1
    INT 21H
    MOV VAL_1, AL
                
                
    MOV AH, 1
    INT 21H
    MOV VAL_2, AL
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    
    ADD VAL_1, VAL_2
    MOV AL, 2
    ADD VAL_1,48
    
    MOV DL, VAL_1
    INT 21H
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
RET





;-------------------------------NEW----------------------------------
.model small 
.stack 100h

.data
num1 db ?
num2 db ?  
msg1 db 'Input first number: $'
msg2 db 0ah,0dh,'input second number: $'
res db 0ah,0dh,'Result: $'
opa db ' + $'
ops db ' - $'
opm db ' x $'
eq db ' = $'
.code

main proc
    ; loading the veriables
    mov ax, @data
    mov ds, ax
    
    ; taking the first number intput
    mov ah, 9
    lea dx, msg1
    int 21h
    
    mov ah, 1
    int 21h 
    sub al, 48
    mov num1, al
 
    ; taking second number input 
    mov ah, 9   
    lea dx, msg2 
    int 21h
    
    mov ah, 1
    int 21h 
    sub al, 48
    mov num2,al
    
    ; Arithmetic oparetion. 
               
    mov ah, 9
    lea dx, res
    int 21h 
    
    ; Additon
    mov ah,2
    mov dl, num1
    int 21h
    mov ah,9
    lea dx, opa
    int 21h
    mov ah,2
    mov dl,num2
    int 21h
    mov ah,9
    lea dx,eq
    int 21h
     
 
    add num1,num2
    
    mov ah,2
    mov dl, num1
    int 21h   
    
    
      
    
    
    
    mov ah, 4ch
    int 21h
    main endp
end main
