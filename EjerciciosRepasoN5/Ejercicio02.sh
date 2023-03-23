#!/bin/bash
#Autor: Abel Martínez Peinado

# declaracion de funciones
function menu(){
	while true
	do
		clear
		echo "Menu Ej2:"
		echo "======================="
		echo "1. Listar contactos."
		echo "2. Añadir un contacto."
		echo "3. Buscar un contacto."
		echo "4. Borrar un contacto."
		echo "5. Salir."
		read -p "Elige una opcion: " opc
		case $opc in
			1)listar;;
			2)anadir;;
			3)buscar;;
			4)borrar;;
			5)salir;;
		esac
	done
}

function listar(){
	clear
	if [[ -f "lista.txt" ]]
	then
		read -p "Elige c para mostrarlo por orden de ciudad y n por nombre: " cN
		case $cN in
			[cC])
				sort -t":" -k4 lista.txt
			;;
			[nN])
				sort -t":" -k1 lista.txt
			;;
		esac
		read -p "Mostrando contenido..."
	else
		touch lista.txt
		read -p "Como no existe el archivo, se acaba de crear."
	fi
}

function anadir(){
	clear
	read -p "Escribe tu nombre: " nombre
	read -p "Escribe tu direccion: " direccion
	read -p "Escribe tu teléfono: " tlf
	read -p "Escribe tu ciudad: " ciudad

	echo "$nombre:$direccion:$tlf:$ciudad" >> lista.txt
	read -p "Escribiendo archivo..."
}
function buscar(){
	clear
	if [[ -f lista.txt ]]
	then
		read -p "Escribe tu nombre: " nombre
		grep "$nombre" lista.txt
		read -p "==============================="
	else
		read -p  "El archivo no existe. Si desea crearlo elige la opcion 1."
		exit 1
	fi
}
function borrar(){
	clear
	read -p "Escribe el nombre de la persona a borrar: " nombre
	sed -i "/$nombre/d" lista.txt
	read -p "Persona eliminada de la lista..."
}
function salir(){
	clear
	read -p "¿Desea salir(s/n)? " sino
	case $sino in
		[sS])
			read -p "Saliendo..."
			exit 0
		;;
		*)read -p "Pulsa ENTER PARA CONTINUAR...";;
	esac
}
menu
