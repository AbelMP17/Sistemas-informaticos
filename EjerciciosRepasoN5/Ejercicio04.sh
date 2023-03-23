#!/bin/bash
#Autor: Abel Martínez Peinado

#Declaracion de condiciones
if [[ $# -lt 2 ]]
then
	echo "Tiene que tener como mínimo 2 parámetros, 1º directorio, a partir del 2º archivos."
	exit 1
fi

if [[ ! -d $1 ]]
then
	echo "El primer parametro debe ser un directorio."
	exit 1
fi

directorio=$1

#Programa
for archivo in "${@:2}"
do
	if [[ ! -f "$archivo" ]]
	then
		echo "Los parámetros a partir del 2º deben ser archivos."
		exit 1
	fi
	cp "$archivo" "$directorio"
done
