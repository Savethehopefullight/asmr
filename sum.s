def summ {
    add al, bl
    mov cl, al
    ret
}

start:
    mov al, 2
    mov bl, 6
    call summ