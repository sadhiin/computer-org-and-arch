.MODEL SMALL
.STACK 100h
.DATA

MSG DB 0AH,0DH,'CHECK A CHARACTER VOWEL OR CONSONANT:$'
newln DB 0DH,0AH,"$";
v DB 0AH,0DH,'VOWEL$'
c DB 0AH,0DH,'CONSONANT$'

.code
main proc
    mov ax,@data
    mov ds, ax
    
    lea dx, msg
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bl, al
    
    ;new line
    lea dx, NEWLN
    mov ah,9
    int 21h
    
    ;checking
    
    cmp bl,'a'
    je vowel
    
    cmp bl,'e'
    je vowel
    
    cmp bl,'i'
    je vowel
    
    cmp bl,'o'
    je vowel
    
    cmp bl,'u'
    je vowel
    
    cmp bl,'A'
    je vowel
    
    cmp bl,'E'
    je vowel
    
    cmp bl,'I'
    je vowel
    
    cmp bl,'O'
    je vowel
    
    cmp bl,'U'
    je vowel
    
    lea dx, c
    mov ah,9
    int 21h
       
    JMP EXIT
    
    
     vowel:
        lea dx, v
        mov ah,9
        int 21h
        
        mov cx,1
        dec cx
        JMP EXIT
    
    
    EXIT:
        mov ah,4ch
        int 21h
        main endp
end main