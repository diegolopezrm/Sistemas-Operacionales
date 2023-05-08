#!/bin/bash

# Genera un archivo .log con información del sistema
log_file="sistema.log"

echo "$(date '+%Y-%m-%d %H:%M:%S') $(hostname) $(uptime | awk '{print $10,$11,$12}') $(free -h | awk '/^Mem/{print $4}')" >> $log_file
