.model small
.stack 100h

.data
msg1 db 'Hello$'
msg2 db 'World$'

.code

main proc
    mov ax,@data      ;loading starting address of data segment in ax
    mov ds,ax         ;by using mov ds,ax data segment gets initialized
    
    lea dx,msg1       ;Move the address of msg1 in register DX
    mov ah,9          ;output message
    int 21h
    
    mov dx,10         ;ascii ---> 10 New Line
    mov ah,2
    int 21h
    
    mov dx,13         ;ascii ---> 13 Carriage Return
    mov ah,2
    int 21h
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main