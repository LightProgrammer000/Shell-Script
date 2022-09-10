#!/bin/bash

clear
echo -e "\033[01;34m -------------------- \033[01;37m"
echo -e "\033[01;35m          \033[01;37m"
echo -e "\033[01;34m -------------------- \033[01;37m"
echo ""
echo -e "\033[01;33m [1] Executar \033[01;37m"
echo -e "\033[01;34m [2] Instalar \033[01;37m"
echo ""
echo -e -n "\033[01;36m - Opc: \033[01;37m"
read opc

# Estrutura de escolha
case $opc in

1)
	clear
	echo -e "\033[01;34m\n  ----- Execucao ----- \n\033[01;37m"
        
       	;;

2)
	clear
    	echo -e "\033[01;35m\n  ----- Instalacao ----- \n\033[01;37m"
    
	# Estutura de decisao: Analisar se o arquivo existe
	if [[ -r / ]]
	then
		echo -e "\033[01;33m\n # Diretorio existente \n\033[01;37m"
	
	else

	fi
    	
    	;;

*)
	;;

esac
