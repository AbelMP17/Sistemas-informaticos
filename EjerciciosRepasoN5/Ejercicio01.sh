#!/bin/bash
#Autor: Abel Martínez Peinado

#Funciones declaradas

function menu(){
	while true
	do
		clear
		echo "Menu Ej01:"
		echo "========================"
		echo "1. Listar usuarios"
		echo "2. Añadir usuarios"
		echo "3. Salir"
		read -p "Elige una opcion: " opc
		case $opc in
			1)listar;;
			2)anadir;;
			3)salir;;
			*)
				read -p "Opcion no valida."
				exit 1
			;;
		esac
	done
}

function listar(){
	clear
	if [[ -f "./miscorreos.txt" ]]
	then
		cat miscorreos.txt
		read -p "Este es el contenido..."
	else
		echo "El archivo no existe, va a ser creado."
		touch miscorreos.txt
		read -p "Saliendo..."
		exit 1
	fi
}
function anadir(){
	clear
	read -p "Escribe el nombre: " nombre
	read -p "Escribe el correo: " mail
	read -p "Escribiendo..."
	echo "$nombre:$mail" >> miscorreos.txt
}
function salir(){
	read -p "¿Deseas salir(s/n)?" sino
	case sino in
		[sS])read -p "Saliendo..."; exit 0;;
}
menu
