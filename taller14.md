# Investigación

## Introducción

En esta práctica, se utilizó la herramienta `stress-ng` para evaluar el rendimiento y la estabilidad de diferentes componentes de un sistema bajo cargas de trabajo simuladas. A continuación, presentamos una serie de problemas propuestos, configuraciones de `stress-ng` y conclusiones basadas en las pruebas realizadas.

## 1. Problemas Propuestos

**1. Evaluación del rendimiento de la CPU:** Determinar la capacidad del procesador para manejar cargas intensivas.
  
**2. Evaluación de la I/O del Disco:** Medir la velocidad y eficiencia del sistema de archivos y el subsistema de disco bajo cargas pesadas.
  
**3. Evaluación de la Gestión de Cambio de Contexto de Procesos:** Medir la eficiencia del sistema operativo en la gestión de cambios rápidos entre procesos.

## 2. Configuraciones de stress-ng

**1. Rendimiento de la CPU:**
stress-ng --cpu 1 --timeout 60s

**2. I/O del Disco:**
stress-ng --hdd 4 --timeout 60s

**3. Gestión de Cambio de Contexto de Procesos:**
stress-ng --switch 100 --timeout 60s

## 3. Tabla de Resultados

# Resultados de Pruebas con Stress-ng

## Rendimiento de CPU

| Prueba | Bogo Ops | Real Time (s) | User Time (s) | Sys Time (s) | Bogo Ops/s (Real Time) | Bogo Ops/s (User+Sys Time) |
|-------|---------|--------------|--------------|-------------|------------------------|----------------------------|
| 1     | 8454    | 60.17        | 59.56        | 0.21        | 140.50                 | 141.44                     |
| 2     | 8776    | 60.03        | 59.67        | 0.15        | 146.21                 | 146.71                     |
| 3     | 8783    | 60.01        | 59.46        | 0.23        | 146.36                 | 147.14                     |
| 4     | 8770    | 60.05        | 59.79        | 0.08        | 146.05                 | 146.48                     |
| 5     | 8770    | 60.14        | 59.37        | 0.26        | 145.82                 | 147.07                     |

## I/O de Disco

| Prueba | Bogo Ops | Real Time (s) | User Time (s) | Sys Time (s) | Bogo Ops/s (Real Time) | Bogo Ops/s (User+Sys Time) |
|-------|---------|--------------|--------------|-------------|------------------------|----------------------------|
| 1     | 551391  | 60.71        | 0.09         | 16.95       | 9082.45                | 32358.63                   |
| 2     | 727285  | 60.83        | 0.16         | 22.08       | 11956.67               | 32701.66                   |
| 3     | 717798  | 60.98        | 0.23         | 21.27       | 11771.18               | 33385.95                   |
| 4     | 912004  | 60.85        | 0.24         | 28.51       | 14987.57               | 31721.88                   |
| 5     | 912463  | 60.46        | 0.25         | 29.18       | 15091.94               | 31004.52                   |

## Gestión de Cambio de Contexto de Procesos

| Prueba | Bogo Ops  | Real Time (s) | User Time (s) | Sys Time (s) | Bogo Ops/s (Real Time) | Bogo Ops/s (User+Sys Time) |
|-------|----------|--------------|--------------|-------------|------------------------|----------------------------|
| 1     | 10945256 | 60.01        | 10.01        | 48.33       | 182388.50              | 187611.52                  |
| 2     | 11195487 | 60.02        | 8.66         | 48.32       | 186541.04              | 196480.99                  |
| 3     | 11764687 | 60.03        | 9.77         | 48.74       | 195992.35              | 201071.39                  |
| 4     | 11948004 | 60.02        | 8.39         | 50.03       | 199069.35              | 204519.07                  |
| 5     | 11154500 | 60.02        | 10.10        | 48.10       | 185844.65              | 191658.08                  |



## 4. Conclusiones

**1. Rendimiento de la CPU:** 
Los resultados muestran una consistencia en el rendimiento de la CPU, indicando que la CPU puede manejar cargas intensivas de manera efectiva.

**2. I/O del Disco:** 
Los valores de Bogo Ops/s reflejan la capacidad del sistema de archivos y el subsistema de disco para manejar la I/O. Los resultados varían, pero en general, el rendimiento parece ser robusto.

**3. Gestión de Cambio de Contexto de Procesos:** 
Los resultados indican una gestión eficiente del cambio de contexto entre procesos, lo que sugiere que el sistema operativo es capaz de manejar multitareas de manera efectiva.

## 5. Datos del Estudiante

<img src='https://github.com/diegolopezrm/Sistemas-Operacionales/assets/63005462/de91c9ac-7911-47b9-a05b-1d66680eacfc' width='80'>

**Nombre:** DIEGO ALEJANDRO LOPEZ CAMACHO
**Código:** 2200162

---
