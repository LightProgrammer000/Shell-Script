#!/bin/bash
 
while ((1))
do
    clear
    echo -e "\033[01;31m # Impressao: \033[01;32m"
    echo -e "\033[01;32m [r] Route    \033[01;32m"
    echo -e "\033[01;33m [i] Ifconfig  \033[01;32m"
    echo -e -n "\033\n[01;34m # Resp: \033[01;37m"
    read -n 1 resp
 
    # Estrutura de decisao
    if [[ $resp == "r" ]]
    then
        echo -e "\n\n\033[01;32m"
        route -n
        echo -e "\033[01;37m"
        sleep 2
    
    elif [[ $resp == "i" ]]
    then
        echo -e "\n\n\033[01;33m"
        ifconfig
        echo -e "\033[01;37m"
        sleep 2
 
    elif [[ $resp == "s" ]]
    then
        exit 1
 
    else
        continue
    fi
done
