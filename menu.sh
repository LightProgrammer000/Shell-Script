#!/bin/bash
 
##########
# FUNCAO #
##########
 
1()
{
    clear
    echo -e "\033[01;31m# 1 \n\033[01;37m"
    read -p "|| ENTER ||"
}
 
2()
{
    clear
    echo -e "\033[01;32m# 2 \n\033[01;37m"
    read -p "|| ENTER ||"
}
 
3()
{
    clear
    echo -e "\033[01;33m# 3 \n\033[01;37m"
    read -p "|| ENTER ||"
}
 
4()
{
    clear
    echo -e "\033[01;34m# 4 \n\033[01;37m"
    read -p "|| ENTER ||"
}
 
5()
{
    clear
    echo -e "\033[01;35m# 5 \n\033[01;37m"
    read -p "|| ENTER ||"
}
 
#####################
# Controle de fluxo #
#####################
 
# Apresentacao
apresentacao()
{
    clear
    echo -e "\033[01;33m###################################\033[01;37m"
    echo -e "\033[01;32m Desenvolvido por DarProgrammer000 \033[01;37m"
    echo -e "\033[34;5m # LightProgrammer000           \033[0m"
    echo -e "\033[01;33m###################################\033[01;37m"
    echo ""
}
 
# Montagem de menu principal
controle_menu()
{
    # Montagem de um array list
    declare -a arr=("1"
                "2"  
            "3" 
            "4" 
            "5"  
            "")
        
    # Tamanho do vetor: ${#arr[@]}
    # Estrutura em loop (estilo C))
    # $i(indice): ${arr[$i]} (conteudo na lista)
 
    echo -e "\033[01;35m# MENU PRINCIPAL \033[01;37m"
    
    for (( i=0; i < ${#arr[@]} - 1; i++))
    do
        echo -e "\033[01;32m # [$((i+1))]: ${arr[$i]} \033[01;37m"
    done
 
    echo -e "\033[01;31m # [0]: Sair \n\033[01;37m"
    echo -n -e "\033[01;37m# Opc.: \033[01;37m"
    read opc
}
 
# Estrutura em escolha
escolha()
{
    case $opc in
    1)  1;;
    2)  2;;
    3)  3;;
    4)  4;;
    5)  5;;
    0)   ;;
    *)   ;;
    esac
}
 
# Controle de fluxo
Programa()
{
    while ((1))
    do
        apresentacao
        controle_menu
        escolha
            
        if (( opc == 0 ))
        then
            break
        else
            continue
        fi
    done
}
 
######################
# Programa principal #
######################
 
# Execucao do programa
Programa
