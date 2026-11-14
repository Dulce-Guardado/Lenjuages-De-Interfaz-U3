//GUARDADO PEREZ DULCE MARIA
//05_MACROS

INCLUDE Irvine32.inc

; Macro para imprimir una cadena en consola y hacer un salto de linea
MostrarMensaje MACRO texto
    mov edx, OFFSET texto
    call WriteString
    call Crlf
ENDM

; Macro para multiplicar dos valores dejando el resultado en EAX
Multiplicar MACRO num1, num2
    mov eax, num1
    imul eax, num2
ENDM

.data
MensajeBienvenida BYTE "Bienvenido al sistema de ventas", 0
MensajeFin BYTE "Hasta luego, vuelva pronto", 0
valor1 DWORD 5
valor2 DWORD 4

.code
main PROC
    ; Llamada a la macro para mostrar los mensajes
    MostrarMensaje MensajeBienvenida
    MostrarMensaje MensajeFin

    ; Multiplicacion usando la macro y despliegue del resultado
    Multiplicar valor1, valor2
    call WriteDec
    call Crlf
    exit
main ENDP
END main
