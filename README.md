# Lenjuages De Interfaz U3
GUARDADO PÉREZ DULCE MARÍA

DOCENTE: JOSE LUIS MEDINA JIMENEZ
# Prácticas de Unidad 3 - Lenguaje Ensamblador (x86 / Irvine32)

En este repositorio se encuentran los programas desarrollados durante la Unidad 3 utilizando ensamblador x86 y la librería `Irvine32`, enfocados en el uso de procedimientos, macros y manejo manual de la pila.

## Descripción de los programas y comprobación

* **`U3-01-Procedimientos.asm`**: Implementa llamadas básicas a un procedimiento (`mostrarAviso`) desde el flujo principal (`main`). Al ejecutarlo comprobé cómo el control del programa salta al procedimiento para imprimir el mensaje y regresa exactamente a la siguiente instrucción después del `call`, permitiendo reutilizar el código sin repetir líneas.
* **`practica_2_unidad_3.asm`**: Demuestra el anidamiento de procedimientos (`main` llama a `RutinaA` y esta a su vez llama a `RutinaB`). Al revisarlo paso a paso en el depurador comprobé cómo la pila guarda las direcciones de retorno en orden LIFO (último en entrar, primero en salir) para que cada `ret` regrese al procedimiento correcto sin perder el flujo.
* **`practica_3_unidad_3.asm`**: Utiliza un procedimiento (`ValidarNoVacia`) para evaluar si el registro `ECX` es igual a cero y devolver una bandera en `EAX` (`0` o `1`). Al ejecutarlo comprobé el funcionamiento de las instrucciones `test` y `jz` para tomar decisiones de salto condicional según el valor retornado.
* **`practica_4_unidad_3.asm`**: Maneja el paso de parámetros a través de la pila usando el puntero base `EBP` y respaldando registros (`EBX`). Al correr el programa comprobé cómo se accede a los argumentos mediante desplazamientos (`[ebp+8]` y `[ebp+12]`), cómo se conserva el valor original de `EBX` (`999`) y cómo `ret 8` limpia los parámetros de la pila al terminar.
* **`05_MACROS.asm`**: Define y utiliza dos macros (`MostrarMensaje` y `Multiplicar`) para imprimir cadenas y multiplicar dos variables en memoria. Al ejecutarlo comprobé que las macros sustituyen el código directamente donde se invocan y muestran correctamente los mensajes junto con el resultado de la operación (`20`) en consola.
