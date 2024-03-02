section	.text
   global _start    
	
_start:             
   mov	al,[x]
   mov  [num1], al
   mov 	bl, [y]
   mov  [num2], bl  
   mov cl, '-'
   mov [minus], cl
   mov dl, '='
   mov [equal], dl
   
   ;escreve o valor 1
   mov	ecx,num1
   mov	edx, 1
   mov	ebx,1	
   mov	eax,4	;chamada de sistema (sys_write)
   int	0x80	;chamada ao kernel
   
   ;escreve o sinal de subtracao
   mov	ecx,minus
   mov	edx, 1
   mov	ebx,1	
   mov	eax,4	;chamada de sistema (sys_write)
   int	0x80	;chamada ao kernel
   
   ;escreve o valor 2
   mov	ecx,num2
   mov	edx, 1
   mov	ebx,1	
   mov	eax,4	;chamada de sistema (sys_write)
   int	0x80	;chamada ao kernel
   
   ;escreve o sinal de igual
   mov	ecx,equal
   mov	edx, 1
   mov	ebx,1	
   mov	eax,4	;chamada de sistema (sys_write)
   int	0x80	;chamada ao kernel
   
   mov al, [num1]
   sub al, '0'
   
   mov bl, [num2]
   sub bl, '0'
   
   sub al, bl
   add al, '0'
   
   mov [suba], al

  
   ;escreve o resultado
   mov	ecx,suba
   mov	edx, 1
   mov	ebx,1	
   mov	eax,4	;chamada de sistema (sys_write)
   int	0x80	;chamada ao kernel
   
  	
   mov	eax,1   ;chamada de sistema (sys_exit)
   int	0x80    ;chamada ao kernel
	
section .data
   x db '5'
   y db '3'
   segment .bss
   suba resb 1
   num1 resb 1
   num2 resb 1
   minus resb 1
   equal resb 1