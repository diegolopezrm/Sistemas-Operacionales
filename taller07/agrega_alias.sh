#!/bin/bash

# Agrega un alias no volátil
# Uso: ./agrega_alias.sh nombre_alias comando

nombre_alias=$1
comando=$2

echo "alias $nombre_alias='$comando'" >> ~/.bashrc
source ~/.bashrc
