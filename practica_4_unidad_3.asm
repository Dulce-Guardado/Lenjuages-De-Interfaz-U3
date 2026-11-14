; Manejo de pila manual
INCLUDE Irvine32.inc

.data

.code
main PROC
    mov ebx, 999
    push 3
    push 25
    call SumarPila
    nop ; Regreso del call SumarPila
    exit
main ENDP

SumarPila PROC
    push ebp ; cima de la pila
    mov ebp, esp
    push ebx
    mov eax, [ebp+8]
    mov ebx, [ebp+12]
    imul eax, ebx
    pop ebx
    pop ebp
    ret 8
SumarPila ENDP
END main
