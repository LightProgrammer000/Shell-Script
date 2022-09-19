#!/bin/bash

# Variaveis: Ano-Mes-Dia | Hora-Minuto
LOG=$(date "+%Y%m%d%H%M")
FILE=backup_home_$LOG.tgz
USUARIO="kali"

# Funcao: Montando Backup do usuario selecionado na variavel USUARIO
backup()
{
	# Arquivo de backup a ser movido
	tar -cvzf $FILE /home/$USUARIO
	mv $FILE Backup/	
	clear

	# Mensagem
	echo "Criando Backup..."
	sleep 3
	echo "O backup de nome \"$FILE\" foi criado em /home/kali/Backup"
	echo ""
	echo "Backup Concluido!"
}

# Calculo dos dias para nao chegar a 1 semana
datacao()
{
	# Arquivo de hoje | Arquivo mais recente
	passado=$(ls -l Backup/ | sort -r | grep -v "total" | cut -d " " -f 9 | tr  "_" "." | cut -d "." -f 3 | head -n 1)
	hoje=$(date "+%Y%m%d%H%M")
	
	# Calculando datacao:
	dias=$(expr $hoje - $passado)
}

# Estrutura em escolha
escolha()
{
	read -p "Já foi gerado um backup do diretório /home/kali nos últimos 7 dias. Deseja continuar? (N/s): " opc

	case $opc in
	
		s|S)
			echo "Criacao de mais um backup para mesma semana"
			backup
			;;
		n|N)
			echo "Script abortado"
			exit 1
			;;
		*)
			echo "Opcao Invalida"
			exit 2
			;;
	esac
}

# Estrutura de decisao
clear
if [ -r Backup/ ]
then
	datacao

	# Estrutura de decisao: 1 Semana de delay
	if (($dias <= 7000))
	then
		escolha
	else
		backup	
	fi	
else
	mkdir Backup
	echo "# Pasta 'Backup' criada"
fi
