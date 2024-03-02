section .text
global _start

_start:

    mov edx, len  ; leva um operando de um lugar para outro = primeiro (edx = destino), segundo (len = origem)
    mov ecx,msg   ; mandando mensagem para o registrador (ecx)   
    mov ebx, 1    ; indicando onde a mensagem sairá (ebx, 1 = sdout) sdout = na tela
    mov eax,4     ; indicando a função que realiza a escrita da mensagem na tela (eax, 4 = sys_write)
    int 0x80      ; interrompe o programa para chamar o kernel o sistema padrão
    
    
    mov eax,1    ; como iremos encerrar o sistema (1, eax = encerrar sistema = sys_exit)
    int 0x80   ; chamamos o kernel para encerrar
    
    section .data
    msg db 'Hello, world!'   ; mensagem a ser exibida na tela
    len equ $ - msg    ; grava o tamanho da mensagem aqui
    