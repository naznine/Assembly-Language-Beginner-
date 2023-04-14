include "emu8086.inc" 
.model small
.stack 100h
.data  
d1 db ?
d2 db ?
num1 db ?
num2 db ?
dif db ?
.code
main proc
    ;taking input for first two digits
    print 'Enter first two digits: '
    mov ah,1
    int 21h
    mov d1,al
    sub d1,30h
    int 21h
    mov d2,al
    sub d2,30h
    
    ;congiguring first number
    mov al,10
    mul d1      ;al=d1*10 
    add al,d2   ;al=d1*10+d2
    mov num1,al ;num1=first number
    
    ;taking input for second two digits
    printn
    print 'Enter second two digits: '
    mov ah,1
    int 21h
    mov d1,al
    sub d1,30h
    int 21h
    mov d2,al
    sub d2,30h
    
    ;congiguring second number
    mov al,10
    mul d1      ;al=d1*10 
    add al,d2   ;al=d1*10+d2
    mov num2,al ;num2=second number
    
    ;summing up two numbers
    mov bl,num1
    sub bl,num2   
    mov dif,bl   ;sum=num1+num2
    
    ;displaying sum 
    mov bl,10
    mov al,dif
    cbw
    div bl      ;sum/10 , quotient=al,remainder=ah
    mov num1,al
    mov num2,ah
    add num1,30h
    add num2,30h
    
    printn
    print 'Subtraction: '
    
    mov ah,2
    mov dl,num1
    int 21h
    mov dl,num2
    int 21h
     
    
    main endp
end main