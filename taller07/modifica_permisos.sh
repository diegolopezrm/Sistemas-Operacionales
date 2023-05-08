#!/bin/bash

# Modifica los permisos, usuario y grupo de un archivo
# Uso: ./modifica_permisos.sh permisos usuario grupo archivo

permisos=$1
usuario=$2
grupo=$3
archivo=$4

chmod $permisos $archivo
chown $usuario:$grupo $archivo

