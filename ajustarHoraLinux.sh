#!/bin/bash
 
# Comando
clear
 
# Estrutura de decisao: Saber se o arquivo existe
if [[ -f /usr/sbin/ntpdate ]]
then
    ntpdate ntp.ubuntu.com && clear
else
    apt-get -y install ntpdate
    ntpdate ntp.ubuntu.com && clear
fi
 
echo -e "\033[01;31m# Hora Ajustada \033[01;00m"
