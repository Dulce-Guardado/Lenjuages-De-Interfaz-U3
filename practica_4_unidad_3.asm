;GUARDADO PEREZ DULCE MARIA
;04_PRACTICA

; Manejo de pila manual y paso de parametros
INCLUDE Irvine32.inc

.data

.code
main PROC
    mov ebx, 999
    ; Se apilan los parametros antes de llamar al procedimiento
    push 3
    push 25
    call SumarPila
    nop ; Punto de regreso tras limpiar la pila
    exit
main ENDP

SumarPila PROC
    ; Se guarda el marco de pila anterior (stack frame)
    push ebp
    mov ebp, esp
    push ebx            ; Se respalda EBX para no perder su valor original

    ; Se recuperan los parametros desde la pila usando EBP
    mov eax, [ebp+8]    ; Primer parametro (25)
    mov ebx, [ebp+12]   ; Segundo parametro (3)
    imul eax, ebx       ; Se multiplican los valores

    ; Se restauran los registros y se liberan los 8 bytes de parametros
    pop ebx
    pop ebp
    ret 8
SumarPila ENDP
END main
