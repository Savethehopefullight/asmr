a: db [0, 5]
b: db [0, 5] 

start:
    mov cl, 1
    mov di, offset a
    
repeat:
    mov byte [di], cl
    inc cl
    inc di
    cmp cl, 11
    jl repeat