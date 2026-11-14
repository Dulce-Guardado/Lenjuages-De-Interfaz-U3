INCLUDE Irvine32.inc

.code
main PROC
    call RutinaA
    ; Apila la dirección de retorno a main y salta
    exit
main ENDP

RutinaA PROC
    call RutinaB
    ; Apila la dirección de retorno a RutinaA y salta
    ret
    ; Desapila y regresa a main
RutinaA ENDP

RutinaB PROC
    nop ; Instrucción nula
    ret ; Desapila y regresa a RutinaA
RutinaB ENDP
END main
