#!/bin/bash

continuar=0

clear

	read -p "Escribe el nombre de un fichero que quieras buscar: " fichero
	if [[ -f $fichero ]]
	then
		while read LINEA 
		do
			echo $LINEA
			sleep 1
		done < $fichero
	else
		echo "fichero no encontrado."
		read -p "Pulsa una tecla para continuar..."
		exit 0
	fi
