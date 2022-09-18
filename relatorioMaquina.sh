#!/bin/bash
# Autor:  LightProgrammer000
# e-mail: lightprogrammer000@protonmail.com
#
# Programa: Script que gera um relatório de algumas informações da máquina atual:
#
# • Nome da Máquina
# • Data e Hora Atual
# • Desde quando a máquina está ativa
# • Versão do Kernel
# • Quantidade de CPUs/Cores
# • Modelo da CPU
# • Total de Memória RAM Disponível
# • Partições
# -> Esses valores devem ser somados e o resultado exibido para o usuário.

# Variaveis
MAQUINA=$(uname -a | cut -f 1,2 -d " ")
DATA=$(date | sed "s/AM/$(date +%:::z)/" | cut -f -5,7 -d " ") 
#DATA=$(date +%x.%X | sed "s/\./ /g" | cut -f 1,2 -d " ")

ATIVA=$(uptime -s)
KERNEL=$(uname -a | cut -f 3 -d " ")
CPU=$(lscpu | grep "CPU(s):" | head -n 1 | sed "s/ //g" | cut -d ":" -f 2)
MODELOCPU=$(cat /proc/cpuinfo | grep -i "model name" | uniq | sed "s/ / /g" | cut -f 2 -d ":")
MEMORIA=$(cat /proc/meminfo | numfmt --field 2 --from-unit=Ki --to-unit=Mi | sed 's/ kB/Mb/g' | sed "s/ //g" | cut -d ":" -f 2 | head -n 1)

# Apresentacao
clear
echo -e "\033[01;32m ===================== \033[01;00m"
echo -e "\033[01;32m ===== RELATORIO ===== \033[01;00m"
echo -e "\033[01;32m ===================== \033[01;00m"

echo -e "\n\033[01;31m ======================================================== \033[01;00m"
echo -e "\033[01;33m # Relatorio da Maquina: $MAQUINA \033[01;00m"
echo -e "\033[01;33m # Data/Hora: $DATA \033[01;00m"
echo -e "\033[01;31m ======================================================== \033[01;00m"

# Sistemas
echo -e "\n\033[01;34m # Maquina Ativa desde: $ATIVA \033[01;00m"
echo -e "\033[01;34m # Versao do Kernel: $KERNEL   \033[01;00m"

# CPU
echo -e "\n\033[01;35m # CPUs: \033[01;00m"
echo -e "\033[01;37m # Quantidade de CPUs/Core: $CPU \033[01;00m"
echo -e "\033[01;37m # Modelo da CPU:$MODELOCPU  \033[01;00m"
echo -e "\033[01;37m # Memoria Total: $MEMORIA \033[01;00m"

# Particoes
echo -e "\n\033[01;36m# Particoes:\033[01;00m\n\033[01;33m$(df -h)\033[01;00m"
