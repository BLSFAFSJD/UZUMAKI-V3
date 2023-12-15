#!/bin/bash
cor="\033[1;97m"   
verde="\033[0;32m"
reset="\033[0m"   
clear
echo "${verde}༄••🌀 『INICIANDO UZUMAKI-V3』 🌀••༄${reset}"
    echo "Escolha uma opção:"
    echo " 1. CONECTAR POR QR-CODE"
    echo " 2. CONECTAR POR NÚMERO DE WHATSAPP"
    echo " 3. SAIR"
    read -p "Digite o número da opção desejada: " opcao
    clear
    case $opcao in
        1)
            echo "Conectando pelo qr-code, aguarde..."
            node index.js
            clear
            echo "qr-code conectando com sucesso!"
            ;;
        2)
            echo "Conectando por número, aguarde..."
            node index.js --use-pairing-code
        
            ;;
        3)
            echo "${cor}Saindo.${reset}"
            exit 0
            ;;
        *)
            echo "${cor}Opção inválida. Saindo.${reset}"
            exit 1
            ;;
    esac
done
