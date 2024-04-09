result: db 0
arr: db[0, 10]

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
    mov si, offset arr
    mov di, offset result
    inc cl
    mov ax, 0
    read:
        add al, byte[si]
        inc si
        loop read
    mov byte [si], al 
    ret
}

start:
    call fill_array
    call summ