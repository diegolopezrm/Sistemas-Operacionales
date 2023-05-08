#!/bin/bash

# Lista los comandos ejecutados en la terminal, los ordena y los cuenta
history | awk '{print $2}' | sort | uniq -c | sort -nr
