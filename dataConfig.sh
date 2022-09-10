#!/bin/bash
 
clear
echo -e "\033[01;33m ====================\033[01;37m"
echo -e "\033[01;32m         DATA        \033[01;37m"
echo -e "\033[01;33m ====================\033[01;37m"
echo ""
 
 
echo -n -e "\033[01;34m # Dia (Ex: 18): \033[01;37m"
read dia
 
echo -n -e "\n\033[01;35m # Mes (Ex: 07): \033[01;37m"
read mes
 
echo -n -e "\n\033[01;36m # Ano (Ex: 2021): \033[01;37m"
read ano
 
echo -n -e "\n\033[01;37m # Hora (Ex: 15): \033[01;37m"
read hora 
 
echo -n -e "\n\033[01;38m # Minuto(s) (Ex: 56): \033[01;37m"
read minuto
 
#  Comando em exemplo -> date -s "07/18/2021 15:51:00"
var=$(date -s "$mes/$dia/$ano $hora:$minuto:00")
 
# Apresentacao
echo -n -e "\n\033[01;31m # Resultado: $var\033[01;37m"
