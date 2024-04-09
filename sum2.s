a1: db 0

def summ 
{
    add al, bl
    mov di, offset a1
    mov byte[di], al
    ret
}

start:
    mov al, 2
    mov bl, 6
    call summ