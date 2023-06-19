# Investigación - Sistemas Operacionales

## 1. Soporte por hardware para implementar la paginación bajo demanda

La paginación bajo demanda necesita de una unidad de administración de memoria (MMU), registros de base y límite y una tabla de páginas para su implementación. La MMU se encarga de traducir direcciones virtuales a físicas. Los registros de base y límite ayudan a prevenir que un proceso acceda a una memoria que no le pertenece. La tabla de páginas almacena información sobre cada página en la memoria, incluyendo su ubicación en la memoria física.

## 2. Característica de copia durante la escritura

La copia durante la escritura es una técnica de optimización de recursos en la que los datos solo se copian si se modifican. Es ventajosa cuando los procesos comparten un gran volumen de datos de solo lectura, ya que se puede ahorrar memoria al no tener que duplicar estos datos para cada proceso. Se realiza una copia solo si un proceso intenta modificar los datos compartidos.

## 3. Soporte de hardware para implementar la copia durante la escritura

La implementación de la copia durante la escritura requiere soporte de hardware que pueda marcar páginas individuales de memoria como de solo lectura y que pueda lanzar una excepción cuando se intenta escribir en estas páginas. También se requiere una unidad de administración de memoria que pueda manejar estas excepciones y realizar la copia de la página cuando sea necesario.

## 4. Algoritmo de sustitución de páginas menos frecuentes

El algoritmo de sustitución de páginas menos frecuentes puede tener un mejor rendimiento que el algoritmo de sustitución de páginas más recientes en situaciones en las que las páginas que se utilizan con menos frecuencia tienen una alta probabilidad de ser necesitadas en el futuro. Por ejemplo, si un programa tiene un ciclo de ejecución en el que utiliza un conjunto de páginas repetidamente y luego pasa a otro conjunto de páginas, el algoritmo de páginas menos frecuentes puede prevenir el desalojo de páginas que se necesitarán pronto.

## 5. Algoritmo de sustitución de páginas más frecuentes

El algoritmo de sustitución de páginas más frecuentes puede tener un mejor rendimiento que el algoritmo de sustitución de páginas menos recientes en situaciones donde las páginas que se utilizan con más frecuencia tienen una alta probabilidad de ser necesitadas en el futuro cercano. Por ejemplo, si un programa tiene un conjunto de páginas que utiliza de forma continua, estas páginas no serán desalojadas, evitando así fallos de página.

## 6. Algoritmo de sustitución FIFO

- En caso de un fallo de página y si la página se encuentra en el conjunto compartido de marcos libres, se puede generar espacio libre para la nueva página solicitada desalojando la página que ha estado en el conjunto de marcos libres por más tiempo (FIFO - First In, First Out).

- Si se produce un fallo de página y la página se encuentra en el conjunto compartido de marcos libres, la página residente se activa actualizando el bit de acceso en la tabla de páginas y se puede hacer espacio para la página solicitada utilizando el algoritmo de sustitución menos recientemente utilizadas para desalojar las páginas del conjunto de marcos libres.

## 7. Mejora de las tasas de utilización de la CPU

- Instalar una CPU más rápida: No necesariamente mejorará la utilización de la CPU. Si la CPU ya tiene un uso bajo y el sistema está limitado por la E/S de disco, entonces una CPU más rápida no resolverá el cuello de botella.

- Instalar un disco de paginación de mayor tamaño: No necesariamente mejorará la utilización de la CPU. El tamaño del disco de paginación no afectará la velocidad a la que los datos pueden leerse o escribirse.

- Incrementar el grado de multiprogramación: Podría mejorar la utilización de la CPU al mantener más procesos en memoria y por lo tanto tener un mayor chance de tener un proceso listo para ejecutarse en todo momento.

- Instalar más memoria principal: Puede mejorar la utilización de la CPU al reducir la cantidad de paginación de disco necesaria, lo que podría reducir los tiempos de espera de la CPU.

- Instalar un disco duro más rápido: Puede mejorar la utilización de la CPU al reducir el tiempo que la CPU tiene que esperar por las operaciones de E/S del disco.
