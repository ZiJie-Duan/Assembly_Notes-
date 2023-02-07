
assume cs:code

code segment
    mov ax,cs
    add ax,10h
    mov ds,ax
    mov cx,26
    mov ax,48h
    mov bx,0h
 s: mov [bx],ax
    add bx,1h
    add ax,1h
    loop s

    mov ax,4c00h
    int 21h

code ends

end
