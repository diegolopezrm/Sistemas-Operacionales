#!/bin/bash

# Comprime el archivo .log si supera cierto tamaño
log_file="sistema.log"
max_size=100000 # Ajusta el tamaño máximo en bytes

size=$(stat -f%z "$log_file")

if [ $size -gt $max_size ]; then
  gzip -c $log_file > "$log_file-$(date '+%Y%m%d%H%M%S').gz"
  echo "" > $log_file
fi
