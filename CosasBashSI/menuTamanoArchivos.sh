#!/bin/bash
##Autor: AbelMP

#Protecion
if [[ $# -ne 1 && ! -d $dir ]]
then
	echo "Debes introducir como parametro un directorio."
	echo "o"
	echo "El parametro introducido no es un directorio valido"
	exit 1
fi


#declaracion de variables#

ficheros=($(find $dir -type f))
media=()
encontrados=()
chivato=false
dir=$1
continuar=0

#Funciones
function buscar(){
	clear
	read -p "Introduce el fichero que quieras buscar: " fich
	for i in ${ficheros[@]}
	do
		if [[ "$i" =~ "$fich" ]]
		then
			encontrados+=($i)
			chivato=true
		fi
	done
	if [[ chivato ]]
	then
		echo "He encontrado los siguientes ficheros ${encontrados[@]}."
		read -p "Enter para volver al menú..."
	else
		echo "No se ha encontrado dicho fichero."
		exit 1
	fi
}

function calcularMediaTamanos(){
	for j in ${ficheros[@]}
	do
		media+=(`stat -c %s "$j"`)
	done
}

function salir(){
	read -p "¿Deseas salir?(s/n) " sino
	case $sino in
		[sS]) echo "Saliendo..."; exit 0 ;;
		*) read -p "Pulsa intro para volver al menu..." ;;
	esac
}

function menu(){
	echo "==========================================="
	echo "Menu:"
	echo "1. Buscar."
	echo "2. Calcular media."
	echo "3. Salir."
	echo "==========================================="
	read -p "Selecciona una opcion: " op

	case $op in
		1)buscar;;
		2)calcularMediaTamanos;;
		3)salir;;
	esac
}

while [[ $continuar -eq 0 ]]
do
	menu
done
