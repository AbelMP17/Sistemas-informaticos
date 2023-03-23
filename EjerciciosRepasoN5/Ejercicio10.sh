#!/bin/bash
#Autor: Abel Martartínez Peinado

if [[ $# -ne 1 ]]
then
	echo "Introduce 1 parametro."
	exit 1
fi

if [[ ! -d $1 ]]
then
	echo "El primer parametro debe ser un directorio."
	exit 1
fi

matriz=(`ls -1a $1`)

# Funciones
function menu(){
	while true
	do
		clear
		echo "Menú E10:"
		echo "============"
		echo "1. Listar"
		echo "2. Borrar"
		echo "3. Salir"
		read -p "Elige una opcion: " opc
		case $opc in
			1)listar;;
			2)borrar;;
			3)salir;;
			*)
				echo "Opcion no válida"
				read -p "Pulsa ENTER para volver al menú"
			;;
		esac
	done
}
function listar(){
	clear
	for i in ${matriz[@]}
	do
		echo "$i"
	done
	read -p "Pulsa ENTER para volver"
}
function borrar(){
	clear
	read -p "Fichero: " fich

	if [[ ! -f "$fich" ]]
	then
		echo "El fichero no existe."
		exit 1
	else
		for i in ${matriz[@]}
		do
			if [[ "$i" == "$fich" ]]
			then
				rm -rf "$fich"
			fi
		done
		matriz=(`ls -1a $1`)
	fi
}
function salir(){
	read -p "¿Deseas salir?(s/n)" sino
	case $sino in
		[sS])
			read -p "Saliendo"
			exit 0
		;;
		*)
			read -p "Pulsa ENTER para seguir."
		;;
	esac
}
menu
