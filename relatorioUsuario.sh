#!/bin/bash
# Autor:  LightProgrammer000
# e-mail: lightprogrammer000@protonmail.com
# 
# * Descricao: Script que recebe um nome de usuário como parâmetro e exiba as seguintes informações:
# - UID do usuário
# - Nome Completo / Descrição do Usuário
# - Total em Uso no /home do usuário
# - Informações do último login do usuário

# Validacao de existencia de usuario (preferivel usar a estrutura if - else)
ls /home/$1 1> /dev/null 2>&1 || { echo "Usuario inexistente"; exit 1; }

# Variaveis
ID=$(cat /etc/passwd | grep -i "$1" | cut -f 3 -d ":")
USUARIO=$(cat /etc/passwd | grep -i "$1" | cut -f 5 -d ":" | sed "s/,//g") # tr -d "," -> Eliminar a virgula
TOTALUSADO=$(du -sh /home/$1 | cut -f 1)u

# Apresentacao
clear
echo -e "\033[01;32m===================== \033[01;00m"
echo -e "\033[01;32m===== RELATORIO ===== \033[01;00m"
echo -e "\033[01;32m===================== \033[01;00m"

echo -e "\n\033[01;31m============================================================================================================== \033[01;00m"
echo -e "\033[01;33m# Relatorio do Usuario: $1 \033[01;00m"
echo -e "\033[01;33m# UID: $ID \033[01;00m"
echo -e "\033[01;33m# Nome: $USUARIO \033[01;00m"
echo -e "\033[01;33m# TOTAL USADO no /home/$1: $TOTALUSADO\033[01;00m"
echo -e "\n\033[01;33m# Ultimo Login: \033[01;00m"
lastlog -u $1
echo -e "\033[01;31m============================================================================================================== \033[01;00m"
