1. Problemas de seguridad en entornos compartidos:
   - *Acceso no autorizado*: Un usuario malintencionado puede intentar acceder a los datos o recursos de otro usuario en el sistema compartido.
   - *Consumo excesivo de recursos*: Un usuario puede consumir intencionalmente una cantidad excesiva de recursos del sistema.
   - La seguridad en un sistema compartido es difícil de lograr al mismo nivel que en un sistema dedicado.

2. Recursos en diferentes tipos de sistemas:
   - *Sistemas embebidos*: memoria limitada, procesador, dispositivos de entrada/salida (I/O).
   - *Mainframe*: CPU, memoria, almacenamiento, dispositivos I/O, conexiones de red.
   - *Workstation*: CPU, memoria, almacenamiento, dispositivos I/O, conexiones de red.
   - *Servidor*: CPU, memoria, almacenamiento, dispositivos I/O, conexiones de red.
   - *Móvil*: memoria limitada, procesador, dispositivos I/O, conexiones de red.

3. Casos de uso para implementar un OS para servidor y PC:
   - *Servidor web*: Un servidor que aloja y sirve contenido web a los usuarios.
   - *Estación de trabajo para diseño gráfico*: Un PC de alto rendimiento utilizado por diseñadores gráficos.

4. Multiprocesamiento simétrico vs. asimétrico:
   - *Simétrico*: Cada procesador tiene acceso igualitario a los recursos del sistema y puede ejecutar cualquier tarea.
   - *Asimétrico*: Cada procesador se especializa en una tarea o conjunto de tareas, y no todos los procesadores tienen acceso igualitario a los recursos del sistema.

5. Requisitos para un cluster de alta disponibilidad (HA):
   - Conectividad de red confiable y redundante.
   - Software de gestión de clusters.
   - Configuración de almacenamiento compartido o replicado.
   - Mecanismos de detección de fallos y conmutación por error automática.

6. Excepción vs. interrupción:
   - *Excepción*: Evento sincrónico causado por la ejecución de una instrucción en el programa.
   - *Interrupción*: Evento asincrónico generado por dispositivos externos al procesador.

7. DMA:
   - La CPU interactúa con el dispositivo I/O mediante la configuración de los registros de control del DMA.
   - La CPU sabe que las operaciones de memoria se han completado cuando el controlador DMA envía una señal de interrupción a la CPU.

8. Utilidad de la cache:
   - *Mejora de rendimiento*: La cache almacena datos recientemente utilizados o frecuentemente accesados.
   - *Reducción de latencia*: La cache ayuda a reducir la latencia entre el procesador y la memoria principal.
   - Problemas resueltos: Mayor velocidad de acceso a datos, reducción de la latencia.
   - Problemas causados: Coherencia de la cache en sistemas multiprocesador o distribuidos.

9. Coherencia de la cache:
   - *Sistema distribuido*: La coherencia de la cache se manifiesta cuando dos nodos diferentes acceden y modifican la misma ubicación de memoria en el almacenamiento compartido.
   - *Sistema multiprocesador*: En un sistema con múltiples procesadores, cada procesador puede tener su propia
