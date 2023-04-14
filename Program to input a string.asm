.model small
.stack 100h

.data
str db 100 dup(?)
str1 db 'output:$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset str
    
    l1:
    mov ah,1
    int 21h
    cmp al,13
    je programend
    mov [si],al
    inc si
    jmp l1
    
    programend:
    lea dx,str1
    mov ah,9
    int 21h
    mov [si],'$'
    lea dx,str
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main