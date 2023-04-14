include "emu8086.inc" 
.model small
.stack 100h
.data 

    

    msg1 db 10,13,'Enter Number... $'

    msg2 db 10,13,'Number is Positive... $' 

    msg3 db 10,13,'Number is Negative... $' 

    msg4 db 10,13, 'Number is Zero.....$'   

    

.code

main proc
    printn
    print 'Enter Number: ' 
    mov ah,1    
    int 21h  
    mov bl,al   
    mov cl,30h  
    cmp bl,cl

    jg positive 
    je zero
    jl Negative    

    

    positive: 
    printn
    print 'Number is Positive.'
    jmp exit
    
    zero: 
    printn
    print 'Number is zero.'
    jmp exit
    
    negative: 
    mov ah,1
    int 21h
    printn
    print 'Number is Negative.'
    jmp exit
    
    
    exit:
    main endp
end main