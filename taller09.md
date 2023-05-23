# Respuestas

## 1. ¿Cuál es el significado del término espera activa?

La espera activa se refiere a un método de sincronización en el que un proceso o hilo continuamente verifica la condición para avanzar o acceder a un recurso compartido. Esto puede llevar a una alta utilización de la CPU, ya que el proceso o hilo consume ciclos de CPU incluso cuando no está realizando ninguna tarea útil, simplemente esperando a que se cumpla la condición.

## 2. ¿De qué manera se puede evitar la espera activa?

La espera activa puede evitarse a través de varios mecanismos de sincronización, como semáforos, monitores, señales o bloqueos. Estos mecanismos permiten a un proceso o hilo bloquearse a sí mismo mientras espera que se cumpla una condición, en lugar de verificar activamente la condición. Esto libera los ciclos de CPU para que sean utilizados por otros procesos o hilos.

## 3. Explique por qué los bloqueos mediante bucle sin fin no son apropiados para sistemas monoprocesador, pero se usan con frecuencia en los sistemas multiprocesador.

Los bloqueos mediante bucle sin fin, o espera activa, no son apropiados para sistemas monoprocesador porque consumen ciclos de CPU inútilmente al esperar que se cumpla una condición. En un sistema monoprocesador, esto puede resultar en que no se realice ninguna otra tarea hasta que se cumpla la condición. En sistemas multiprocesador, sin embargo, otros procesos o hilos pueden seguir avanzando en otros núcleos o procesadores, por lo que la espera activa puede ser aceptable en ciertos casos.

## 4. Explique por qué las interrupciones no son apropiadas para implementar primitivas de sincronización en los sistemas multiprocesador.

Las interrupciones pueden ser difíciles de usar para la sincronización en sistemas multiprocesador porque implican la comunicación entre diferentes procesadores o núcleos. Esto puede ser complejo y propenso a errores, especialmente en situaciones en las que la sincronización precisa es crítica. Además, el manejo de interrupciones puede ser costoso en términos de rendimiento y puede ser difícil de gestionar correctamente.

## 5. Describa cómo se puede utilizar la instrucción swap() para proporcionar un mecanismo de exclusión mutua que satisfaga el requisito de espera limitada.

La instrucción swap() se puede utilizar para implementar un bloqueo de exclusión mutua mediante la alternancia de un valor en una variable compartida. Un proceso o hilo puede utilizar swap() para cambiar el valor de la variable a un valor que indica que está ocupado antes de entrar en una sección crítica. Si otro proceso o hilo intenta hacer lo mismo, verá que el valor ya ha cambiado y se bloqueará o entrará en espera activa. Este mecanismo garantiza que solo un proceso o hilo puede entrar en la sección crítica a la vez, cumpliendo así el requisito de espera limitada.

## 6. Los servidores pueden diseñarse de modo que limiten el número de conexiones abiertas. Explique cómo puede utilizar un servidor los semáforos para limitar el número de conexiones concurrentes.

Un semáforo se puede utilizar para controlar el acceso a un recurso limitado, como las conexiones a un servidor. El servidor inicializa un semáforo con el número máximo de conexiones que puede manejar concurrentemente. Cada vez que se establece una nueva conexión, el servidor decrementa el semáforo. Si el semáforo está en cero, lo que indica que todas las conexiones posibles están en uso, los nuevos clientes tendrán que esperar hasta que se libere una conexión. Cuando se cierra una conexión, el servidor incrementa el semáforo, lo que permite que se establezca una nueva conexión.

## 7. Demuestre que los monitores y semáforos son equivalentes, en cuanto a que se pueden emplear para implementar los mismos tipos de problemas de sincronización.

Los monitores y semáforos se pueden utilizar para resolver los mismos tipos de problemas de sincronización, aunque lo hacen de maneras diferentes. 

Un semáforo es una variable que se utiliza para controlar el acceso a un recurso compartido a través de operaciones de incremento (signal) y decremento (wait). 

Por otro lado, un monitor es un constructo de programación que encapsula los datos compartidos y los métodos para acceder a esos datos de una manera que garantiza la exclusión mutua. 

Por ejemplo, podríamos implementar un buffer limitado tanto con semáforos como con monitores. Con semáforos, tendríamos un semáforo para controlar el acceso al buffer y otro para controlar el número de elementos en el buffer. Con un monitor, tendríamos un método para añadir un elemento al buffer y otro para extraer un elemento, y ambos garantizarían la exclusión mutua.

## 8. La exclusión mutua estricta en un monitor hace que el monitor de búfer limitado sea adecuado para porciones pequeñas. Explique por qué es cierto esto.

La exclusión mutua estricta en un monitor significa que solo un hilo puede estar activo en el monitor en cualquier momento. Esto hace que el monitor sea adecuado para tamaños de buffer pequeños, ya que se garantiza que no habrá conflictos de acceso al buffer. 

Además, la lógica de sincronización en un monitor tiende a ser más fácil de entender y de razonar, lo cual es especialmente útil en situaciones donde el espacio es limitado y los errores de concurrencia pueden ser difíciles de detectar.

## 9. ¿Por qué Windows y Linux utilizan bloqueos mediante bucle sin fin como mecanismo de sincronización solo en los sistemas multiprocesador y no en los sistemas monoprocesador?

Windows y Linux utilizan bloqueos mediante bucle sin fin en sistemas multiprocesador debido a su eficiencia en comparación con otros mecanismos de sincronización en estas plataformas. 

En un sistema multiprocesador, un hilo que espera la liberación de un bloqueo puede ser desplazado a otro procesador, permitiendo que otros hilos avancen. En un sistema monoprocesador, sin embargo, el bucle de espera consumiría tiempo de CPU sin realizar ningún trabajo útil, lo que podría llevar a una degradación del rendimiento.
