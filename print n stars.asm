include "emu8086.inc" 
.model small
.stack 100h  

.data  
num db ?

.code
main proc
    printn
    print 'Enter the number: '  
    mov ah,1
    int 21h
    sub al,30h
    mov num,al
    
    level:
    mov bl,num
    mov cl,0
    cmp bl,cl
    
    je exit
    printn
    mov dl,'*'
    mov ah,2
    int 21h
    dec bl
    mov num,bl
    jmp level
    
    exit:
    main endp
end main
    