#!/bin/bash

# Compara dos archivos a nivel de bytes y líneas
# Uso: ./compara_archivos.sh archivo1 archivo2

archivo1=$1
archivo2=$2

file $archivo1
file $archivo2
cmp -l $archivo1 $archivo2
diff $archivo1 $archivo2
