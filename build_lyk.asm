
assume cs:code,ds:data,ss:stack

data segment

    dw 796ch,6b00h

data ends

stack segment

    dw 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    dw 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

stack ends

code segment

start:  mov ax,data
        mov ds,ax
        mov ax,stack
        mov ss,ax

        mov cx,10
        mov sp,30
    s:  mov bx,0
        push [bx]
        mov bx,2
        push [bx]
        add sp,1

        loop s

    mov ax,4c00h
    int 21h

code ends

end start