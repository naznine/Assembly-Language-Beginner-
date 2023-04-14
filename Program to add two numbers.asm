;Program to add two numbers 

.model small
.stack 100h

.data

.code  

main proc
    mov al,2
    add al,1
    add al,48  ;0 start from 48 in ascii table
    
    mov dl,al
    mov ah,2
    int 21h
    mov ah,4ch
    int 21h
    main endp

end main

