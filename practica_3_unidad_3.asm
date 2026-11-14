;GUARDADO PEREZ DULCE MARIA 
;03_PRACTICA

INCLUDE Irvine32.inc

.code
main PROC
    mov ecx, 0                  ; Se inicializa el contador en 0 para simular entrada vacia
    call ValidarNoVacia
    
    ; Se evalua la bandera de retorno en EAX
    test eax, eax
    jz entradaInvalida          ; Si EAX es 0, salta a entradaInvalida
    jmp finPrograma

entradaInvalida:
    ; Bloque para manejar el caso cuando la entrada esta vacia

finPrograma:
    exit
main ENDP

; Procedimiento que verifica si ECX es cero
ValidarNoVacia PROC
    cmp ecx, 0
    je esVacia
    mov eax, 1                  ; Retorna 1 si tiene datos
    ret
esVacia:
    mov eax, 0                  ; Retorna 0 si esta vacia
    ret
ValidarNoVacia ENDP
END main
