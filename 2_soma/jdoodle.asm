section .text
global _start

_start:

    mov eax,'5' ; primeiro numero a somar no registrador eax
    sub eax, '0' ; converte um caractere para o formato decimal
    
    mov ebx, '4' ; segundo numero a somar no registrador ebx
    sub ebx, '0'
    
    add eax, ebx  ; soma os dois valores
    
    add eax, '0'  ; converte de decimal para caractere
    
    mov [sum], eax ; colocando a soma em um endereço de memória variável = sum
    
    ; escreve a mensagem = String
    mov ecx,msg
    mov edx, len
    mov ebx,1
    mov eax,4
    int 0x80
    
    ;escreve o valor = resultado soma
    mov ecx,sum
    mov edx,1 ; = tamanho
    mov ebx,1 ; = saída padrão
    mov eax,4 ;chamada sistema sys_write
    int 0x80 ; chama kernel
    
    mov eax,1  ; sys_out
    int 0x80 ; chama kernel para encerrar
    
    section .data
        msg db "A soma é: ", 0xA,0xD
        len equ $ - msg
        segment .bss
        sum resb 1
    
    