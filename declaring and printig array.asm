;declaring and printing an array

include "emu8086.inc"
.model small
.stack 100h
.data                                         

array  DB   1,2,3,4,5,6,7,8,9,0  

.code
main proc 
    mov ax,@data
    mov ds,ax
    
    mov cx,10
    mov si,0
    
    print:
    printn
    print 'Array Element: '
    mov dl,array[si]
    add dl,30h
    mov ah,2
    int 21h
    inc si
    loop print
    
    main endp
end main