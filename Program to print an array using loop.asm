.model small
.stack 100h

.data
ar1 db 'a','b','c'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset ar1
    mov cx,3
    
    l1:
    mov dx,[si]
    mov ah,2
    int 21h
    inc si
    
    mov dx,10
    mov ah,2
    int 21h
    mov dx,13
    mov ah,2
    int 21h
     
    loop l1
    
    mov ah,4ch
    int 21h
    
    main endp
end main