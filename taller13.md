# Análisis de la Herramienta `stress-ng`

## 1. Nombre y breve descripción de la herramienta.
- **Nombre:** stress-ng
- **Descripción:** Stress-ng es una herramienta de prueba de estrés que genera cargas de trabajo en varios subsistemas de un sistema Linux. Se usa para evaluar cómo se desempeña el sistema bajo carga pesada.

## 2. Los comandos creados con una descripción de lo que hace y por qué lo hace.
- **CPU:** 
  - **Comando:** `stress-ng --cpu 8 --timeout 60s --metrics`
  - **Descripción:** Genera carga de trabajo en 4 CPUs durante 60 segundos y muestra métricas al final. Es útil para evaluar la capacidad de manejo de carga de la CPU y observar su comportamiento y temperatura bajo diferentes condiciones de carga.
  
- **VM (Virtual Memory):**
  - **Comando:** `stress-ng --vm 4 --vm-bytes 1G --timeout 60s --metrics`
  - **Descripción:** Genera carga de trabajo en la memoria virtual utilizando 2 workers que consumen 1GB cada uno durante 60 segundos y muestra métricas al final. Se utiliza para probar el subsistema de memoria, incluidos swap y sistemas de archivos, y cómo maneja el sistema la presión de la memoria.
  
- **Fork:**
  - **Comando:** `stress-ng --fork 4 --timeout 60s --metrics`
  - **Descripción:** Crea 8 procesos rápidamente durante 60 segundos y muestra métricas al final. Es útil para probar el planificador y la gestión de procesos.

## 3. Ejecución de comandos y análisis de resultados
### CPU:

| Iteración | Bogo Ops | Real Time (secs) | Usr Time (secs) | Sys Time (secs) | Bogo Ops/s (real time) | Bogo Ops/s (usr+sys time) |
|-----------|----------|------------------|-----------------|-----------------|------------------------|---------------------------|
| 1         | 8527     | 60.04            | 57.56           | 0.37            | 142.02                 | 147.19                    |
| 2         | 8779     | 60.16            | 59.39           | 0.20            | 145.92                 | 147.32                    |
| 3         | 8226     | 60.10            | 55.65           | 0.17            | 136.87                 | 147.37                    |
| 4         | 8770     | 60.12            | 59.43           | 0.13            | 145.86                 | 147.25                    |
| 5         | 8779     | 60.08            | 59.05           | 0.33            | 146.12                 | 147.84                    |

La carga de la CPU se mantuvo bastante constante en todas las iteraciones. Las variaciones en el tiempo del sistema y el tiempo del usuario no fueron significativas.

### VM (Virtual Memory)
| Ejecución | Bogo Ops | Real Time (secs) | Usr Time (secs) | Sys Time (secs) | Bogo Ops/s (real time) | Bogo Ops/s (usr+sys time) |
|-----------|----------|------------------|-----------------|-----------------|------------------------|---------------------------|
| 1         | 1067668  | 60.01            | 57.68           | 1.51            | 17790.68               | 18037.98                  |
| 2         | 1067668  | 60.02            | 57.99           | 1.49            | 17788.67               | 17950.03                  |
| 3         | 1067668  | 60.01            | 58.06           | 1.37            | 17790.79               | 17965.14                  |
| 4         | 1067668  | 60.01            | 53.34           | 1.44            | 17791.18               | 19490.11                  |
| 5         | 1067668  | 60.01            | 57.54           | 1.82            | 17790.85               | 17986.32                  |

**Análisis VM:**  
Las pruebas para VM muestran resultados bastante consistentes en términos de operaciones Bogo y tiempos. La carga generada es casi idéntica en cada ejecución. Esto indica que la herramienta es capaz de generar una carga uniforme y que el sistema es capaz de manejar esta carga de manera efectiva y consistente.

### Fork
| Ejecución | Bogo Ops | Real Time (secs) | Usr Time (secs) | Sys Time (secs) | Bogo Ops/s (real time) | Bogo Ops/s (usr+sys time) |
|-----------|----------|------------------|-----------------|-----------------|------------------------|---------------------------|
| 1         | 348097   | 60.01            | 23.10           | 35.43           | 5800.18                | 5947.33                   |
| 2         | 304458   | 60.00            | 21.05           | 31.97           | 5073.96                | 5742.32                   |
| 3         | 347397   | 60.01            | 23.01           | 35.49           | 5788.91                | 5938.41                   |
| 4         | 340325   | 60.01            | 22.64           | 35.87           | 5671.14                | 5816.53                   |
| 5         | 348237   | 60.00            | 22.82           | 35.73           | 5803.96                | 5947.69                   |

**Análisis Fork:**  
Las operaciones Bogo varían en las pruebas de Fork, lo que puede ser indicativo de la variabilidad en la capacidad del sistema para manejar la rápida creación de procesos en diferentes momentos. Sin embargo, a pesar de esta variabilidad, las cifras están relativamente cerca, lo que indica que la herramienta crea una carga similar en cada ejecución y que el sistema se comporta de manera similar bajo esta carga.

---
