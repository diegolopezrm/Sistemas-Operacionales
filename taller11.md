# Taller de Investigación

## Pregunta 1

La **fragmentación interna** ocurre cuando el espacio de memoria asignado a un proceso es mayor que la cantidad requerida. El espacio adicional se desperdicia porque no puede ser utilizado por otros procesos.

La **fragmentación externa**, por otro lado, ocurre cuando el espacio de memoria libre está dividido en fragmentos que están esparcidos a lo largo de la memoria. Aunque la memoria total no asignada puede ser suficiente para un proceso, puede que no haya un bloque continuo de memoria lo suficientemente grande para acomodarlo.

## Pregunta 2

El **editor de montaje** o enlazador (linker) tiene la responsabilidad de asignar direcciones de memoria absolutas a las instrucciones y datos del programa. Cambia el acoplamiento de instrucciones y datos a direcciones de memoria asignándoles direcciones específicas en la memoria durante la fase de enlace, después de la compilación.

## Pregunta 3

El compilador pasa la siguiente información al editor de montaje:

- Las posiciones relativas de las instrucciones y datos en la memoria.
- La información sobre las referencias externas e internas en el código.
- El tamaño de las secciones de código y datos.

## Pregunta 4

El cálculo de la memoria para los algoritmos de primer ajuste, mejor ajuste y peor ajuste es un proceso detallado que requiere análisis individual y depende de la disposición de la memoria en un momento dado.

## Pregunta 5

Para soportar la asignación dinámica de memoria se necesita:

1. **Asignación contigua de memoria**: Requiere una tabla de asignación de memoria para rastrear qué bloques de memoria están actualmente en uso y cuáles están libres.
2. **Segmentación pura**: La memoria se divide en segmentos de tamaño variable que pueden asignarse a los procesos de forma dinámica. Se necesita una tabla de segmentos para rastrear la ubicación y el tamaño de cada segmento.
3. **Paginación pura**: La memoria se divide en bloques de tamaño fijo llamados páginas. Se necesita una tabla de páginas para rastrear qué páginas están asignadas a cada proceso.

## Pregunta 6

La comparación entre asignación continua, segmentación pura y paginación pura varía de la siguiente manera:

- Fragmentación externa: Mayor en la asignación contigua, menor en la segmentación pura y inexistente en la paginación pura.
- Fragmentación interna: Inexistente en la asignación contigua y segmentación pura, pero puede ser significativa en la paginación pura.
- Capacidad para compartir código: Más difícil en asignación contigua, posible en segmentación pura y fácil en paginación pura.

## Pregunta 7

1. Esto es para proteger los datos y las instrucciones de los procesos de la interferencia de otros procesos.
2. A través de mecanismos como el mapeo de memoria compartida.
3. Debería permitirlo para permitir la comunicación y la colaboración entre procesos, pero no debería permitirlo para proteger los procesos contra la interferencia no deseada.

## Pregunta 8

La paginación requiere menos memoria para las estructuras de producción de direcciones debido al tamaño fijo de las páginas. La segmentación, por otro lado, puede requerir más memoria debido a la variabilidad en el tamaño de los segmentos.

## Pregunta 9

Para obtener la dirección física de una dirección lógica en la segmentación, se suma la base del segmento a la dirección lógica. Las direcciones físicas serían:

1. 0. 430: 219 + 430 = 649
2. 1. 10: 2300 + 10 = 2310
3. 2. 500: No válida, ya que 500 está más allá de la longitud del segmento.
4. 3. 400: 1327 + 400 = 1727
5. 4. 112: 1952 + 112 = 2064
