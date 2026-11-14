INCLUDE Irvine32.inc

MostrarMensaje MACRO texto
    mov edx, OFFSET texto
    call WriteString
    call Crlf
ENDM

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
    MostrarMensaje MensajeBienvenida
    MostrarMensaje MensajeFin
    Multiplicar valor1, valor2
    call WriteDec
    call Crlf
    exit
main ENDP
END main
