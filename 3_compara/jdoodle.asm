section .text
    global _start
    
_start:
    
    mov al,'5' ; valor 1
    mov bl, '5' ; valor 2
    cmp al,bl ; compara os dois valores
    je iguais ; se iguais pula para o rotulo iguais: 
    
    
diferentes:
    mov ecx,msg2
    mov edx,len2
    mov ebx,1
    mov eax,4
    int 0x80
    jmp saida ; pula para a saida
    
iguais:
    mov ecx,msg1
    mov edx,len1
    mov ebx,1
    mov eax,4
    int 0x80
    jmp saida ; pula para a saida
    
saida:
    mov eax,1
    int 80h
    
section .data

    msg1 db "Iguais"
    len1 equ $- msg1
    
    msg2 db "Diferentes"
    len2 equ $- msg2