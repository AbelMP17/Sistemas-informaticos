#!/bin/bash
#Autor: Abel Martínez Peinado

if [[ $# -lt 1 ]]
then
	echo "Debes pasar como parámetro al menos un archivo o directorio."
	exit 1
fi

#Bucle para coger parámetros uno a uno
for fichero in "$@"
do
	# Comprobar si el fichero existe
	if [ ! -e "$fichero" ]
	then
		echo "El fichero $fichero no existe"

	# Comprobar si el fichero es un directorio
	elif [ -d "$fichero" ]
	then
		ls -ld "$fichero"

	# Comprobar si el fichero es un fichero regular
	elif [ -f "$fichero" ]
	then
		cat "$fichero"

	# En cualquier otro caso, mostrar información extendida
	else
		echo "El tipo de archivo no es válido."
		exit 1
	fi
done
