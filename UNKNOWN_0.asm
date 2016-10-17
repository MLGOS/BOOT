;
; A boot sector that prints a string using our function
;
[org 0x7c00] ;Tell assembler where this code will be loaded.
  mov bx, HELLO_MSG  ;use BX as a parameter to our function, so 
  call print_string  ;we can specify a address of a string.
  
  mov bx, GOODBYE_MSG
  call print_string
  
  jmp $              ; kill the computer or hang it.
