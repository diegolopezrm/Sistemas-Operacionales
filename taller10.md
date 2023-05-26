1. Para que un interbloqueo ocurra, deben cumplirse cuatro condiciones:
   - **Exclusión mutua:** En la imagen, cada vehículo ocupa un carril único y no puede compartirlo.
   - **Espera de retención:** Los vehículos mantienen un carril y al mismo tiempo esperan el acceso a otro.
   - **No preempción:** Los carriles ocupados por un vehículo no pueden ser forzados a ser liberados.
   - **Espera circular:** Cada vehículo está esperando que otro libere un recurso. Esta situación es claramente visible en la imagen con los autos esperando a que el anterior se mueva.

2. Una regla simple para evitar los interbloqueos en este sistema sería introducir un semáforo o una señal de control que regule el flujo de los vehículos, permitiendo que sólo uno de los carriles avance a la vez.

3. Las condiciones básicas de interbloqueo en el problema de la cena de los filósofos son las siguientes:
   - **Exclusión mutua:** Cada filósofo necesita dos tenedores para comer. No se pueden compartir los tenedores.
   - **Espera de retención:** Un filósofo puede tomar un tenedor y esperar por el otro.
   - **No preempción:** Un tenedor no puede ser quitado a un filósofo a menos que este lo libere voluntariamente.
   - **Espera circular:** Puede surgir una situación en la que cada filósofo tenga un tenedor y esté esperando por el otro tenedor que está siendo sostenido por otro filósofo, creando un ciclo de espera.

4. Una forma de evitar los interbloqueos en el problema de la cena de los filósofos sería rompiendo la condición de espera circular. Esto se puede hacer implementando una regla que indique que un filósofo sólo puede tomar un tenedor si ambos están disponibles al mismo tiempo. 

5. El esquema de espera circular puede ser menos eficiente en términos de tiempo de ejecución adicional porque implica bloquear y desbloquear recursos repetidamente, lo cual puede aumentar la sobrecarga de gestión. En comparación, los esquemas de evasión de interbloqueos, como el de detección y recuperación, pueden requerir un tiempo adicional para la detección, pero podrían evitar bloqueos y desbloqueos repetidos.

6. En términos de la tasa de procesamiento del sistema, la espera circular podría ralentizar la tasa de procesamiento, ya que puede resultar en un uso menos eficiente de los recursos. Por otro lado, los esquemas de evasión de interbloqueos pueden incrementar la tasa de procesamiento al minimizar el tiempo que los procesos pasan en espera de los recursos.

7. En este sistema, dado que cada proceso necesita como máximo dos recursos, y hay cuatro disponibles, incluso en el peor de los casos (cuando dos procesos ya han obtenido dos recursos), todavía quedará un recurso para el tercer proceso. Por lo tanto, se evita la condición de agotamiento de recursos y el sistema está libre de interbloqueos.

8. En el problema de los filósofos, una regla simple para evitar interbloqueos sería que un filósofo sólo pueda solicitar un palillo si hay al menos dos disponibles. De esta manera, siempre se evitará la situación en la que todos los filósofos tienen un palillo y están esperando el segundo.

9. El algoritmo de detección de interbloqueos a menudo asume que eventualmente todos los procesos liberarán sus recursos. Esta es una suposición optimista que podría violarse si, por ejemplo, un proceso nunca llega a completarse o si un error en el código causa un ciclo infinito en el proceso. En tales casos, el interbloqueo puede no ser detectado por el algoritmo, lo que lleva a un bloqueo permanente del sistema.
