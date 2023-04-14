;declaring and printing an array using DUP

include "emu8086.inc"
.model small
.stack 100h
.data                                         

line db 5,4,3dup(0)   

.code
main proc 
    mov ax,@data
    mov ds,ax
    
    mov cx,5
    mov si,0
    
    print:
    printn
    print 'Array Element: '
    mov dl,line[si]
    add dl,30h
    mov ah,2
    int 21h
    inc si
    loop print
    
    main endp
end main