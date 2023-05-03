# Investigación

## 1. Ejemplos de multihilo vs. monohilo

### Ejemplo 1: Problemas con dependencias de datos

Cuando un hilo requiere el resultado de otro hilo para continuar su ejecución, el multihilo no proporciona una mejora significativa en el rendimiento. En este caso, los hilos deben sincronizarse y esperar a que se complete la tarea antes de continuar.

### Ejemplo 2: Algoritmos secuenciales

Algunos algoritmos no pueden dividirse en tareas paralelas y deben ejecutarse secuencialmente. En tales casos, el multihilo no proporciona un mejor rendimiento que el monohilo.

## 2. Cambio de contexto en hilos de nivel de usuario

Las bibliotecas de hilos de nivel de usuario manejan el cambio de contexto al guardar y restaurar el estado de los registros y la pila de cada hilo. Esto incluye:

1. Guardar el estado actual de los registros del hilo en ejecución.
2. Seleccionar el siguiente hilo a ejecutar.
3. Restaurar el estado de los registros del hilo seleccionado.
4. Saltar a la posición de ejecución del hilo seleccionado.

## 3. Compartir registros entre hilos

No, los valores de los registros no se comparten entre los hilos de un proceso multihilo. Cada hilo tiene su propio conjunto de registros para mantener su estado y contexto de ejecución.

## 4. Compartir cúmulos de memoria entre hilos

Sí, los cúmulos de memoria (heap) se comparten entre los hilos de un proceso multihilo. Esto permite a los hilos comunicarse y compartir datos a través de estructuras de datos en el heap.

## 5. Compartir variables globales entre hilos

Sí, las variables globales se comparten entre los hilos de un proceso multihilo. Esto permite a los hilos acceder y modificar las mismas variables, pero puede llevar a problemas de sincronización y concurrencia si no se manejan correctamente.

## 6. Compartir memoria de pila entre hilos

No, la memoria de pila no se comparte entre los hilos de un proceso multihilo. Cada hilo tiene su propia pila, que contiene información sobre la ejecución de las funciones y las variables locales.

## 7. Mejor rendimiento con multihilo en sistemas monoprocesador

El multihilo puede proporcionar un mejor rendimiento en sistemas monoprocesador cuando se enfrenta a operaciones de E/S bloqueantes o cálculos intensivos en CPU. Al dividir las tareas en múltiples hilos, el sistema puede cambiar a otro hilo cuando uno está bloqueado o esperando, lo que permite una mejor utilización de los recursos del sistema.

## 8. Rendimiento de multihilo en sistemas multiprocesador

Sí, una solución multihilo que utiliza múltiples hilos de usuario puede lograr un mejor rendimiento en sistemas multiprocesador que en sistemas monoprocesador. Esto se debe a que los sistemas multiprocesador pueden ejecutar múltiples hilos en paralelo, lo que permite aprovechar al máximo los recursos disponibles y mejorar el rendimiento.

## 9. Impacto del rendimiento con más hilos de usuario que procesadores

Cuando el número de hilos de usuario es mayor que el número de procesadores y el número de hilos del kernel asignados al programa es menor que el número de procesadores, el rendimiento puede verse afectado negativamente. Esto se debe a que los hilos del kernel pueden no ser capaces de asignar suficientes recursos de procesador para manejar todos los hilos de usuario de manera eficiente.

En tales casos, el sistema operativo puede pasar más tiempo cambiando entre hilos y administrando la asignación de recursos que ejecutando las tareas en sí. Esto puede provocar una contienda por los recursos del sistema y un aumento en el tiempo de espera para cada hilo, lo que resulta en un rendimiento reducido.
