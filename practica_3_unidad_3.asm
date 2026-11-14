INCLUDE Irvine32.inc

.code
main PROC
    mov ecx, 0
    call ValidarNoVacia
    test eax, eax
    jz entradaInvalida
    jmp finPrograma

entradaInvalida:

finPrograma:
    exit
main ENDP

ValidarNoVacia PROC
    cmp ecx, 0
    je esVacia
    mov eax, 1
    ret
esVacia:
    mov eax, 0
    ret
ValidarNoVacia ENDP
END main
