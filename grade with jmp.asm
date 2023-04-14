include "emu8086.inc" 
.model small
.stack 100h
.data  
d1 db ?
d2 db ?
num1 db ?
num2 db ?
sum db ?
.code
main proc
    ;taking input for first two digits
    loop1:   
    printn
    print 'Enter the number: '
    mov ah,1
    int 21h   
    cmp al,0dh
    je exit
    
    sub al,30h  
    
    mov bl,9
    ;sub d2,30h
    cmp al,bl
    je pAP
    
    mov bl,8
    ;sub d2,30h
    cmp al,bl
    je pA
    
    mov bl,7
    ;sub d2,30h
    cmp al,bl
    je pAM
    
    mov bl,6
    ;sub d2,30h
    cmp al,bl
    je pBP
    
    mov bl,5
    ;sub d2,30h
    cmp al,bl
    je pB
    
    
    mov bl,4
    ;sub d2,30h
    cmp al,bl
    je pBM
    
    jmp pF
    
    pAP:
    printn
    print 'Grade: A+'
    jmp loop1 
    
    pA:
    printn
    print 'Grade: A'
    jmp loop1
    
    pAM:
    printn
    print 'Grade: A-'
    jmp loop1
    
    pBP:
    printn
    print 'Grade: B+' 
    jmp loop1
    
    pB:
    printn
    print 'Grade: B'
    jmp loop1
    
    pBM:
    printn
    print 'Grade: B-' 
    jmp loop1
    
    pF:
    printn
    print 'Grade: F'
    jmp loop1
    
    exit:
    main endp
end main