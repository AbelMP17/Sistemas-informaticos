#!/bin/bash
#Autor: AbelMP
##
#1ª opcion, me pedira por pantalla un dir si existe creara un archivo comprimido de dicho dir cuyo nombre sea el nombre del dir_dia_mes_año.tar.gz, se guardara en este mismo dir
#2ª opcion, descomprimir, me pedira que le inserte la ruta y nombre del fichero a descomprimir si existe me pide la ruta de destino y si existe lo hace, solo lo hace con tar.gz
#3ª opcion, salir con un S o s

continuar=0

function salir(){
	read -p "Desea salir(s/n): " sino
	case $sino in
		[sS])
			echo "Saliendo..."
			exit 0
		;;
		*)
			read -p "Pulsa enter para volver al menú."
		;;
	esac
}

function comprimir(){
	clear
	echo "Opcion 1:"
	echo "=================================================="
	read -p "Escribe un directorio para ser comprimido: " direc
	if [[ ! -d $direc ]]
	then
		echo "La ruta escrita no es un directorio"
		echo "==================================="
		exit 1
	fi
	fecha=$(date +'%d_%B_%Y')
	nombreArc="$direc_$fecha.tar.gz"
	tar -czvf "$nombreArc" "$direc"
}

function descomprimir(){
	clear
	echo "================================================"
	read -p "Introduce la ruta del fichero a descomprimir: " fich
	echo "================================================"

	comprobar=`grep -e ".tar.gz$" $fich`

	if [[ -f $fich || $comprobar == $fich ]]
	then
		echo "================================================"
		read -p "Introduce el directorio de destino: " destino
		echo "================================================"

		if [[ -d $destino ]]
		then
			tar -xvf $fich -C $destino
		fi
	fi
}

while [[ continuar ]]
do
	clear
	echo "Menú:"
	echo "1ª opcion. Comprimir."
	echo "2ª opcion. Descomprimir."
	echo "3ª opcion. Salir."
	read -p "Selecciona una opcion (1, 2, 3): " op

	case $op in
		1) comprimir;;
		2) descomprimir;;
		3) salir;;
		*)
			echo "Opcion no valida."
			sleep 2
			clear
			exit 1
		;;
	esac
done
