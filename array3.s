arr: db[0, 10]

; fill arr from 1 to 10
def fill_array 
{
    mov di, offset arr
    mov cl, 1 
    fill:
        mov byte[di], cl
        inc cl
        inc di 
        cmp cl, 11
        jnz fill
    ret
}

def summ 
{
    mov si, offset arr
    read:
        mov al, byte[si]
        inc si
        loop read
    ret
}

start:
    call fill_array
    call summ