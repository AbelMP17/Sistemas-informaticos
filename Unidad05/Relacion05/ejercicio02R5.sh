#!/bin/bash
#Autor: AbelMP
#####
#Tenemos un archivo lista.txt que tiene el siguiente formato:
	#Nombre:dirección:Teléfono:ciudad.
#Inicialmente está vacío.
#Debes crear un script ejercicio2.sh que tenga el siguiente menú:
#Este menú debe repetirse mientras que no se decida salir.
#Debes crearte las siguientes funciones:
	#Listar: Nos mostrará toda la información existente en la agenda, de forma
	#ordenada. Nos debe preguntar si la queremos ordenada por ciudad o por
	#nombre de usuario.
	#Añadir: Nos preguntará el nombre, dirección, teléfono y ciudad y lo añadirá
	#al final del fichero.
	#Buscar: Nos preguntará el nombre y le mostraremos los registros que
	#coinciden con ese nombre.
	#Borrar: Nos pregunta un nombre y debemos borrar los posibles registros
	#con confirmación.

clear

continuar=0

while [[ continuar -eq 0 ]]
do
	echo "======================================"
	echo "Menu:"
	echo "1.- Listar contactos."
	echo "2.- Anadir un contacto."
	echo "3.- Buscar un contacto."
	echo "4.- Borrar un contacto."
	echo "5.- Salir"
	read -p "Selecciona una opcion (1,2,3,4,5): " opcion
	echo "======================================"

	function listar(){
		if [[ -f ./lista.txt ]]
		then
			read -p "Escribe c para ordernarlo por ciudad o n para ordenarlo por nombre de usuario. " opc
			case $opc in
				c)
					sort -t':' -k 4 ./lista.txt
				;;
				n)
					sort -t':' -k 1 ./lista.txt
				;;
			esac
		else
			echo 'El archivo lista.txt'
			exit 1
		fi
	}

	function anadir(){
		read -p 'Escribe tu nombre: ' nombre
		read -p 'Escribe tu direccion: ' direc
		read -p 'Escribe tu telefono: ' tlf
		read -p 'Escribe tu ciudad: ' ciudad
		echo "$nombre:$direc:$tlf:$ciudad" >> ./lista.txt
	}
	function buscar(){
		read -p 'Escribe tu nombre: ' nombre2
		grep -E "$nombre2" ./lista.txt
	}
	function borrar(){
		contenido=""
		read -p 'Escribe tu nombre: ' nombre3
		grep -i "$nombre3" lista.txt
		sed -i "/$nombre3/d" lista.txt
	}
	function salir(){
		continuar=1
	}

	case $opcion in
		1)
			listar
		;;
		2)
			anadir
		;;
		3)
			buscar
		;;
		4)
			borrar
		;;
		5)
			salir
			exit 0
		;;
		*)
			echo 'Opcion erronea.'
			exit 1
		;;
	esac
done
exit 0
