section .text

global _start

_start:
    mov     al, '3'
    sub     al, '0'
    mov     bl, '5' 
    sub     bl, '0'
    mov     [num1], al ; colocando variavel criada x em eax
    mov     [num2], bl ; colocando variavel criada y em ebx
    cmp     al, bl   ; compara o valor1 com o valor2
    jg      primeiro_maior
    
segundo_maior:

    mov     ecx, ''
    mov     edx, 1
    mov     ebx, 1
    mov     eax, 4
    int     0x80
    

    sub     bl, al
    add     bl, '0'
    mov     [suba], bl
    
    
   

    jmp     saida
    
primeiro_maior:
    mov ecx,0
    mov edx,1
    sub     al, bl
    add     al, '0'
    mov     [suba],al 
    mov     ebx, 1
    mov     eax, 4
    int     0x80
    jmp     saida
    

    
saida:
    mov     ecx, suba
    mov     edx, 1
    mov     ebx, 1
    mov     eax, 4
    int     0x80

section .data
 
   
   segment .bss
   
   num1 resb 1
   num2 resb 1
   suba resb 1