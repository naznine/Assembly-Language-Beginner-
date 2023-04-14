include "emu8086.inc" 
.model small
.stack 100h
.data  
d1 db ?
d2 db ?
d3 db ?

.code
main proc
    ;taking input for first two digits   
    printn
    print 'Enter the 1st number: '
    mov ah,1
    int 21h
    ;sub al,30h
    mov d1,al
    
    printn
    print 'Enter the 2nd number: '
    int 21h
    ;sub al,30h
    mov d2,al
    
    printn
    print 'Enter the 3rd number: '
    int 21h
    ;sub al,30h
    mov d3,al
       
     
    mov al,d1
    mov bl,d2
    cmp al,bl
    jge second_check:
    
    mov al,d3
    cmp al,bl
    jge maxD3
    jmp maxD2
    
    second_check:
    mov bl,d3
    cmp al,bl
    jge maxD1
    jmp maxD3
    
    maxD1:
    printn
    print 'Max number: '
    mov dl,d1
    mov ah,2
    int 21h
    jmp exit
    
    maxD2:
    printn
    print 'Max number: '
    mov dl,d2
    mov ah,2
    int 21h
    jmp exit
    
    maxD3:
    printn
    print 'Max number: '
    mov dl,d3
    mov ah,2
    int 21h
    jmp exit
    
    exit:
    main endp
end main