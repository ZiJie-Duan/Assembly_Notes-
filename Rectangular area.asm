
assume cs:codes

codes segment ; used to calculate a Rectangular area

    mov ax,0
    mov bx,0
    mov dx,0

    mov ax,  ; input 1 
    mov bx,  ; input 2

    mov cx,bx
 s: add dx,ax
    loop s
    
    mov ax,4c00h
    int 21h

codes ends

end