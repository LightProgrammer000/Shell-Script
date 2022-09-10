# !/bin/bash
# Programa: usuario.sh
# Assunto: Procurando usuarios na pasta em 'etc/passwd'
# Compilar: chmod 777
 
# FUNCOES #
 
existencia()
{
    # Caminho
    arquivo=/etc/passwd
    
    # Verificar se o usuario tem permissao de ROOT
    if [[ $USER == "root" ]]
    then
        # Analisar: Arquivo existe
        if [[ -e $arquivo ]]
        then
            
            # Analisar: Arquivo + Permissao de leitura
            if [[ -f $arquivo && -r $arquivo ]]
            then
                procedimento_1
            
            else
                "Programa Interrompido por falta de permissao ROOT"
            fi
        fi
    fi
}
 
entrada_dados()
{
    # Entrada de dados (Amarelo)
    echo -n -e "\033[01;33m- DIGITE O NOME: \033[01;37m"
    read nome
 
    # Comando de procura + Status de saida
    a=`grep -i "$nome" /etc/passwd`
    b=$?
}
 
procedimento_1()
{
    clear
 
    loop=1
    while (( $loop == 1 ))
    do
        # Inicio de programa (Verde)
        echo -e "\033[01;32m-------------------- \033[01;37m"
        echo -e "\033[01;32m PROCURANDO USUARIO \033[01;37m"
        echo -e "\033[01;32m-------------------- \033[01;37m"
        echo ""
 
        # Chamada de funcao
        entrada_dados
 
        # Estrutura de decisao:
 
        # Caso 1: Usuario encontrado
        if (( $b == 0 ))
        then
            clear
            echo ""
            echo -e "\033[01;34m--------------------\033[01;37m"
            echo -e "\033[01;34m USUARIO ENCONTRADO \033[01;37m"
            echo -e "\033[01;34m--------------------\033[01;37m"
            echo -e "\033[01;35m### RESULTADOS ###\033[01;37m"
            echo ""
            echo "$a"
            echo ""
 
        # Caso 2: Usuario Nao-Encontrado
        else
            # Estrutura de Repeticao
            while (( $b != 0 ))
            do
                clear
                echo ""
                echo -e "\033[01;31m------------------------------\033[01;37m"
                echo -e "\033[01;31mXXX USUARIO NAO ENCONTRADO XXX\033[01;37m"
                echo -e "\033[01;31m------------------------------\033[01;37m"
                echo ""
 
                # Chamada de funcao
                entrada_dados
 
                # Caso 2.1: Usuario encontrado
                if (( $b == 0 ))
                then
                    clear
                    echo -e "\033[01;34m--------------------\033[01;37m"
                    echo -e "\033[01;34m USUARIO ENCONTRADO \033[01;37m"
                    echo -e "\033[01;34m--------------------\033[01;37m"
                    echo -e "\033[01;35m### RESULTADOS ###\033[01;37m"
                    echo ""
                    echo "$a"
                    echo ""
                fi
            done
        fi
    done
 
    echo ""
}
 
##########################################
################ PROGRAMA ################
##########################################
 
# Chamada de funcao
procedimento_1
