1. **Diferencias entre planeación a corto y largo plazo**:
   Mientras que la planeación a corto plazo se centra en objetivos y metas a alcanzar en un periodo breve (meses a un año), la planeación a largo plazo aborda metas que se lograrán en un lapso más amplio (varios años o décadas). La planeación a corto plazo es más específica y detallada, mientras que la planeación a largo plazo es más general y estratégica.

2. **Procesos a mediano plazo**:
   a) *Planificación de proyectos*: Este proceso implica la identificación y asignación de recursos, así como la elaboración de un cronograma para finalizar un proyecto en un plazo de uno a cinco años.
   b) *Desarrollo de productos*: Es el proceso de diseño, creación y lanzamiento de nuevos productos o servicios al mercado, el cual puede durar desde meses hasta años.

3. **Acciones del kernel para cambio de contexto entre procesos**:
   El cambio de contexto ocurre cuando el kernel del sistema operativo guarda el estado actual de un proceso en ejecución y carga el estado de otro proceso para reanudar su ejecución. Esto implica:
   a) Guardar el estado del proceso actual, incluidos registros, contador de programa y otros datos del proceso.
   b) Cargar el estado del siguiente proceso, incluidos registros, contador de programa y otros datos del proceso.
   c) Actualizar la tabla de procesos para reflejar el cambio de contexto.

4. **Ventajas y desventajas de comunicación síncrona y asíncrona desde el punto de vista del programador**:
   *Síncrona*:
   - Ventajas: Facilita la coordinación entre procesos y la secuencia de ejecución es más fácil de entender.
   - Desventajas: Puede causar bloqueos y reducir el rendimiento si un proceso debe esperar a que otro termine.

   *Asíncrona*:
   - Ventajas: Permite que los procesos continúen su ejecución sin esperar a otros, lo que mejora el rendimiento y la utilización de recursos.
   - Desventajas: La coordinación entre procesos puede ser más difícil y puede aumentar la complejidad del código.

5. **Ventajas y desventajas del envío por copia y por referencia desde el punto de vista del OS**:
   *Envío por copia*:
   - Ventajas: Mayor seguridad e independencia entre procesos, ya que se crea una copia de los datos.
   - Desventajas: Mayor uso de recursos y tiempo, ya que se deben copiar los datos.

   *Envío por referencia*:
   - Ventajas: Menor uso de recursos y tiempo, ya que no se copian los datos.
   - Desventajas: Posible interferencia entre procesos y menor seguridad, ya que los procesos comparten datos.

6. **Ventajas y desventajas de mensajes de tamaño fijo y tamaño variable desde el punto de vista del OS**:
   *Tamaño fijo*:
   - Ventajas: Facilita la administración de la memoria y la implementación del sistema de mensajería.
   - Desventajas: Puede haber desperdicio de memoria si los mensajes no utilizan toda la capacidad asignada.

   *Tamaño variable*:
   - Ventajas: Mayor eficiencia en el uso de la memoria, ya que se ajusta al tamaño real del mensaje.
   - Desventajas: Mayor complejidad en la administración de la memoria y en la implementación del sistema de mensajería.

7. **Estados de un proceso**:
   Los estados de un proceso son las diferentes etapas por las que pasa un proceso a lo largo de su ciclo de vida. Estos estados incluyen:
   a) *Nuevo*: El proceso se ha creado pero aún no ha sido admitido en la lista de procesos listos para ejecutarse.
   b) *Listo*: El proceso espera ser asignado a un procesador para su ejecución.
   c) *En ejecución*: El proceso se está ejecutando actualmente en el procesador.
   d) *Bloqueado*: El proceso espera algún evento externo, como la finalización de una operación de E/S, antes de poder continuar su ejecución.
   e) *Terminado*: El proceso ha completado su ejecución y ha sido eliminado de la lista de procesos activos.

8. **Datos en un PCB (Bloque de Control de Proceso)**:
   Un PCB contiene información sobre un proceso, que incluye:
   a) Identificador del proceso (PID): Un número único que identifica al proceso.
   b) Estado del proceso: El estado actual del proceso (nuevo, listo, en ejecución, bloqueado o terminado).
   c) Contador de programa: La dirección de la siguiente instrucción a ejecutar en el proceso.
   d) Registros del procesador: El valor actual de los registros del procesador para el proceso.
   e) Espacio de direcciones: Información sobre la asignación de memoria para el proceso.
   f) Información de E/S: Información sobre los dispositivos de E/S utilizados por el proceso y el estado de las operaciones de E/S.
   g) Prioridad: La prioridad asignada al proceso para su planificación.
   h) Información de planificación: Datos utilizados por el planificador del sistema operativo para determinar el orden de ejecución de los procesos.

9. **Modelo de comunicación Cliente-Servidor**:
   El modelo de comunicación Cliente-Servidor es un modelo de arquitectura de red en el que los dispositivos (clientes) solicitan servicios o recursos a otros dispositivos (servidores) que los proporcionan. En este modelo, los clientes y servidores tienen roles bien definidos y se comunican a través de un protocolo de red. Los servidores suelen ser máquinas más potentes que gestionan y proporcionan recursos compartidos, como bases de datos, archivos o aplicaciones. Los clientes, por otro lado, son dispositivos que consumen estos recursos y pueden ser desde computadoras de escritorio hasta dispositivos móviles.

   Algunas características clave de este modelo son:
   a) Los servidores son responsables de gestionar y proporcionar los recursos solicitados por los clientes.
   b) Los clientes solicitan servicios o recursos a los servidores y pueden consumirlos una vez que los reciben.
   c) La comunicación entre clientes y servidores se realiza a través de un protocolo de red estandarizado.
   d) El modelo permite la distribución y escalabilidad de los recursos, ya que los servidores pueden ser añadidos o actualizados según sea necesario.

