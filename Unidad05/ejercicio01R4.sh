#!/bin/bash
#Autor: Abel MP
#Ejercicio 01 / Relacion de ejercicios 4

#Realiza 3 funciones: menú, listar y añadir.
#- La función listar, muestra el contenido del archivo miscorreos.txt
#- La función añadir, pregunta: nombre y correo electrónico y a continuación
#lo vuelca en un fichero llamado miscorreos.txt en forma de nombre:correo.

clear

continuar=0

while [[ continuar -eq 0 ]]
do
	echo "======================================"
	echo "Menú: "
	echo "1.- Listar usuarios."
	echo "2.- Añadir usuarios."
	echo "3.- Salir"
	read -p "Selecciona una opción (1, 2, 3): " opc
	echo "======================================"
	case $opc in
		1)
			if [[ -f ./miscorreos.txt ]]
			then
				cat ./miscorreos.txt
			else
				echo "Archivo no encontrado."
			fi
		;;
		2)
			read -p "Escribe tu nombre: " nombre
			read -p "Escribe tu correo electrónico: " email
			echo "===================================="
			echo "$nombre:$email" >> ./miscorreos.txt
		;;
		3)
			continuar=1
		;;
		*)
			echo "Opcion no valida."
			exit 1
		;;
	esac
done
