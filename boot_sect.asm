mov ah, 0x0e
mov al, 'M'
int 0x10
mov al, 'L '
int 0x10
mov al, 'G'

jmp $

times 510-($-$$) db 0

dw 0xaa55
