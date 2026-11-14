;GUARDADO PEREZ DULCE MARIA
;01_PROCEDIMIENTOS 

INCLUDE Irvine32.inc

.data
mensajeInicio BYTE "Inicio de programa", 0
mensajeProcedimiento BYTE "Estoy dentro del procedimiento", 0
mensajeFin BYTE "Fin del programa", 0

.code
main PROC
    ; Mensaje inicial del programa
    mov edx, OFFSET mensajeInicio
    call WriteString
    call crlf

    ; Primera llamada al procedimiento y asignacion en EAX
    call mostrarAviso
    mov eax, 10

    ; Segunda llamada al procedimiento y modificacion de EAX
    call mostrarAviso
    mov eax, 20

    ; Mensaje de cierre
    mov edx, OFFSET mensajeFin
    call WriteString
    call crlf
    exit
main ENDP

; Procedimiento que imprime un aviso en pantalla y regresa al flujo principal
mostrarAviso PROC
    mov edx, OFFSET mensajeProcedimiento
    call WriteString
    call crlf
    ret
mostrarAviso ENDP
END main
