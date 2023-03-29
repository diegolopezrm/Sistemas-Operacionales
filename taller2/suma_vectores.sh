#!/bin/bash
# suma_vectores.sh

# Leer los archivos y almacenarlos en variables
vector1=($(cat mi_carpeta/archivo1.txt))
vector2=($(cat mi_carpeta/archivo2.txt))

# Realizar la suma de los vectores y guardarla en un archivo
for i in {0..4}; do
  echo $((${vector1[$i]} + ${vector2[$i]})) >> mi_carpeta/resultado.txt
done

