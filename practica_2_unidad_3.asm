;GUARDADO PEREZ DULCE MARIA
;02_PRACTICA

INCLUDE Irvine32.inc

.code
main PROC
    ; Llama a RutinaA y guarda en la pila la direccion de retorno a main
    call RutinaA
    exit
main ENDP

RutinaA PROC
    ; Llama a RutinaB apilando la direccion de retorno a RutinaA
    call RutinaB
    ret                 ; Regresa el control a main
RutinaA ENDP

RutinaB PROC
    nop                 ; Instruccion nula de prueba
    ret                 ; Regresa el control a RutinaA
RutinaB ENDP
END main
