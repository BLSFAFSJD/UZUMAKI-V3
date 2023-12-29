#!/bin/bash
cor="\033[1;97m"
verde="\033[0;32m"
reset="\033[0m"
auth_path="./config/qr-code"

# Função para exibir a lista de login
exibir_lista_login() {
    echo "${verde}༄••🌀 『INICIANDO UZUMAKI-V3』 🌀••༄"
    echo "${verde}Escolha uma opção:"
    echo " 1. CONECTAR POR QR-CODE"
    echo " 2. CONECTAR POR NÚMERO DE WHATSAPP"
    echo " 3. SAIR"
    read -p "Digite o número da opção desejada: " opcao
}

while :
do
    if [ ! -d "$auth_path" ] || [ "$(ls -A "$auth_path" | wc -l)" -eq 0 ]; then
        exibir_lista_login
    else
        if [ "$(ls -A "$auth_path" | wc -l)" -gt 1 ]; then
            echo "${verde}༄••🌀 『INICIANDO UZUMAKI-V3』 🌀••༄"
            node index.js
        else
            exibir_lista_login
        fi
    fi

    case $opcao in
        1)
            echo "Conectando pelo qr-code, aguarde..."
            node index.js
           
            if [ ! -d "$auth_path" ] || [ "$(ls -A "$auth_path" | wc -l)" -eq 0 ]; then
                exibir_lista_login
            fi
            ;;
        2)
            echo "Conectando por número do WhatsApp, aguarde..."
            node index.js --use-pairing-code 
            
            ;;
    esac

done
