#!/bin/bash

# Comando
clear

# Introduzindo valores
echo -n -e "\033[01;32mInforme o Valor 1: "
read VAL1

# Estrutura de decisao: Variavel vazia	
if [ -z $VAL1 ]
then
	exit 1
else
	echo -n -e "\033[01;32mInforme o Valor 2: "
	read VAL2

	# Estrutura de decisao: Variavel vazia	
	if [ -z $VAL2 ]
	then
		exit 1
	else
		# Programa
		echo -e "\n\033[01;31mEscolha uma operacao:\033[01;00m"
		echo -e "\033[01;33m1 = Soma 	  	   \033[01;00m"
		echo -e "\033[01;33m2 = Subtracao 	   \033[01;00m"
		echo -e "\033[01;33m3 = Multiplicao	   \033[01;00m"
		echo -e "\033[01;33m4 = Divisao		   \033[01;00m"
		echo -e "\033[01;33mQ = Sair		   \033[01;00m"
		echo -n -e "\n\033[01;37mOpcao: \033[01;00m"
		read opc

		# Estrutura em escolha
		case $opc in
	
			1)
				# Mensagem
				echo -e "\n\033[01;36m# Soma: $VAL1 + $VAL2 = $(expr $VAL1 + $VAL2)\033[01;00m";;

			2)	
				# Mensagem
				echo -e "\n\033[01;36m# Subtracao: $VAL1 - $VAL2 = $(expr $VAL1 - $VAL2)\033[01;00m";;

			3|4)
				# Estrutura de decisao: Protecao contra valores nulos
				if [ $VAL1 -eq 0 -o $VAL2 -eq 0 ]
				then
					echo -e "\n\033[01;31m# Valor das variaveis nao podem ser nula\033[01;00m"
				else
			
					if [ $opc -eq 3 ]
					then
						# Mensagem
						echo -e "\n\033[01;36m# Multiplicacao: $VAL1 * $VAL2 = $(expr $VAL1 \* $VAL2)\033[01;00m"
	
					elif [ $opc -eq 4 ]
					then
						# Mensagem
						echo -e "\n\033[01;31m# Divisao com resto: $(expr $VAL1 % $VAL2)\033[01;00m"
						echo -e "\033[01;36m# Divisao: $VAL1 / $VAL2 = $(expr $VAL1 / $VAL2)\033[01;00m"
					fi
				fi
				;;
			q)
				echo -e "\n\033[01;35m# Ate mais !!!\033[01;00m"
				exit 0
				;;
			
			*)	
				echo -e "\n\033[01;31m# Opcao invalida\033[01;00m"
				exit 2
				;;
		esac
	fi
fi
