#!/bin/bash
 
clear
echo -n -e "\033[01;32m *** TABUADA ***\033[01;37m\n"
echo -n -e "\033[01;33m\n # Digite N: "
read n
echo ""
 
# Estrutura de repeticao
for (( i = 1; i < 11; i++ ))
do
    # Calculo
    cal=$(( i * n ))
 
    # Mensagem
    echo -e "\033[01;3$i"m "# $i x $n => $cal \033[01;37m "
done
