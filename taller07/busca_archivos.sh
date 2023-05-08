#!/bin/bash

# Busca todos los archivos .txt, .png y .jpg en el sistema
find / -type f \( -iname "*.txt" -o -iname "*.png" -o -iname "*.jpg" \)
