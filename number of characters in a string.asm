;number of characters in a string 

include "emu8086.inc"
.model small
.stack 100h
.data 
var1 db 100 dup("$") 
msg db 'Enter the string$: $'
msg1 db ?
.code 
main proc
     
    printn
    print 'Enter the string: '  
    
    mov bl,0
    l1: 
    mov ah,1 
    int 21h  
    cmp al,0dh 
    je printString  
    inc bl
    jmp l1 
    
    printString:
    printn
    print 'Number of character in the string: '
     
    mov dl, bl
    mov ah,2
    add dl, 48
    int 21h 
    
    mov ah,4ch 
    int 21h 
    
    main endp 
end main