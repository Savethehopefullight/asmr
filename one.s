a: db 5
b: db 6
c: db 0

start:
    mov si, offset a
    mov al, byte [si]
    mov si, offset b
    mov bl, byte [si]
    add al, bl
    mov di, offset c
    mov byte [di], al
    