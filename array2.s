a1: db 0
arr: db[0, 10]

; fill arr from 1 to 10
def fill_array {
    mov di, offset arr
    mov cl, 1 
    fill:
    mov byte[di], cl
    inc cl
    inc di 
    cmp cl, 11
    jnz fill
}

def summ 
{
    add al, bl
    mov di, offset a1
    mov byte[di], al
    ret
}

start:
    call fill_array
    call summ