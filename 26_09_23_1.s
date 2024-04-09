result: db 0
arr: db[0, 10]

def to_stack{
    mov si, offset arr
    mov cl, 10
    read:
        mov al, byte[si]
        push ax
        inc si
        loop read
    ret
}

; fill arr from 1 to 10
def fill_array {
    mov di, offset arr
    mov cl, 1 
    fill:
        mov byte[di], cl
        inc di
        inc cl
        cmp cl, 11
        jnz fill
    ret
}

def summ {
    mov ax, 0
    from:
        pop bx
        add ax, bx
        cmp sp, 0
        jnz from
    mov di, offset result 
    mov byte[di], al
    ret
}


    
    

start:
    call fill_array
    call to_stack
    call summ