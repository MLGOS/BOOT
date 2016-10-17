mov ah, 0x0e
mov al, 'M'
int 0x10
mov al, 'L '
int 0x10
mov al, 'G'

#strlength.s
.include "UNKNOWN_0.asm"

.section .text
.globl strlength
.type strlength, @function
strlength:
 pushl %ebp
 movl %esp, %ebp
 movl $0, %ecx
 movl 8(%ebp), %edx
read_next_byte:
 movb (%edx), %al
 cmpb $END_OF_FILE, %al
 jle end
 incl %edx
 incl %ecx
 jmp read_next_byte
end:
 movl %ecx, %eax
 popl %ebp
 ret

jmp $

times 510-($-$$) db 0

dw 0xaa55
