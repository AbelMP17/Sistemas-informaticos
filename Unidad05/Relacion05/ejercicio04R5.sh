#!/bin/bash
##Autor: AbelMP

##Condiciones a cumplir.
if [[ ! -d $1 ]]
then
	echo "Debes pasar como primer parámetro un directorio."
	exit 1
fi

if [[ $# -lt 2 ]]
then
	echo "Uso: $0 directorio_destino archivo1 archivo2 archivo3 ..."
	exit 1
fi

##Programa funcional
dir=$1

for archivo in "${@:2}"
do
	if [[ ! -f "$archivo" ]]
	then
		echo "El archivo $archivo no existe."
		exit 1
	fi

	cp "$archivo" "$dir"
done

