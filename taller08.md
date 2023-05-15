1. **Por qué es importante para un planificador diferenciar entre un programa limitado por I/O y por CPU?**

   Es importante porque estos dos tipos de programas tienen diferentes necesidades y patrones de uso. Los programas limitados por CPU requieren mucho tiempo de CPU y poco I/O, mientras que los programas limitados por I/O pasan la mayor parte de su tiempo esperando operaciones de entrada/salida. Un planificador eficiente puede mejorar el rendimiento general del sistema si puede distinguir entre estos dos tipos y programarlos de manera apropiada.

2. **Como entran en conflicto en determinadas configuraciones la utilización de CPU y tiempo de respuesta?**

   En algunas configuraciones, aumentar la utilización de la CPU puede llevar a un aumento del tiempo de respuesta. Esto se debe a que a medida que la CPU se acerca a su capacidad máxima, puede haber más procesos en la cola de espera, lo que aumenta el tiempo de respuesta. Por otro lado, si la CPU no se utiliza completamente, puede que no se esté maximizando el rendimiento.

3. **Como entran en conflicto en determinadas configuraciones el tiempo medio de procesamiento y tiempo máximo de espera?**

   El tiempo medio de procesamiento y el tiempo máximo de espera pueden entrar en conflicto en ciertas configuraciones. Por ejemplo, si el planificador está configurado para favorecer la equidad (todos los procesos obtienen una porción igual del tiempo de CPU), entonces el tiempo medio de procesamiento puede ser bajo, pero el tiempo máximo de espera puede ser alto. Por otro lado, si el planificador está configurado para favorecer la eficiencia (los procesos que pueden ser completados rápidamente son atendidos primero), entonces el tiempo máximo de espera puede ser bajo, pero el tiempo medio de procesamiento puede ser alto.

4. **Como entran en conflicto en determinadas configuraciones la utilización de los dispositivos I/O y la utilización de la CPU?**

   Los conflictos entre la utilización de los dispositivos I/O y la CPU pueden surgir cuando los procesos requieren ambos recursos al mismo tiempo. Si un proceso está esperando por un dispositivo I/O, no puede utilizar la CPU y viceversa. Esto puede llevar a una subutilización de ambos recursos si no se manejan correctamente.

5. **Diagrama de Gantt**

Tiempo: 0----2----4----6----8----10---12---14---16---18---20---22

P1:     |----10---|

P2:              |---1---|

P3:                   |----2---|

P4:                         |----1---|

P5:                               |----5---|


6. **Tiempo de ejecución de cada proceso para cada algoritmo**

   El tiempo de ejecución de cada proceso es el mismo para todos los algoritmos, ya que cada proceso aún requiere la misma cantidad de tiempo de CPU para completarse. Lo que cambia entre los algoritmos es el tiempo de espera y la respuesta, no el tiempo de ejecución.

7. **Tiempo de espera de cada proceso para cada algoritmo**

   El tiempo de espera varía dependiendo del algoritmo de planificación utilizado y del orden en que los procesos son programados.

8. **Que algoritmo puede dar lugar a bloqueos indefinidos?**

   El algoritmo de planificación por prioridades puede dar lugar a bloqueos indefinidos o inanición, donde un proceso con baja prioridad puede no ejecutarse nunca si siempre hay procesos de alta prioridad disponibles para ejecutarse.

9. **Considere un sistema que implementa una planificación por colas multinivel. Que estrategia puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario?**

   Una estrategia que podría utilizarse para maximizar la cantidad de tiempo de CPU asignada a los procesos del usuario en un sistema de planificación por colas multinivel podría ser el envejecimiento. Esta técnica incrementa la prioridad de los procesos que han estado esperando en la cola durante mucho tiempo, permitiendo que eventualmente sean promovidos a una cola de mayor prioridad. Esto puede ayudar a asegurar que todos los procesos reciban algún tiempo de CPU, y que los procesos del usuario no sean constantemente preteridos por procesos de sistema de alta prioridad.

