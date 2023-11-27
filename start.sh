#!/bin/bash

# Defina as cores para uso no script
verde="\033[0;32m"
CYAN="\033[1;36m"
blue="\033[0;34m"

while :
do
    echo "${verde}༄••🌀 『INICIANDO UZUMAKI-V3』 🌀••༄"
    node index.js
    sleep 1
done

# Sistema para evitar que o bot caia
# Use "sh start.sh" no Termux para iniciar o script
