#!/bin/bash


if [[ $# -eq 0 ]]
then
	echo "Parámetro no introducido"
	exit 1
fi

if [[ ! -d $1 ]]
then
	echo "Error al introducir un directorio como parámetro"
	exit 1
fi

######################

miarray=(`find $1 -maxdepth 1 -type f 2> /dev/null`)
echo ${#miarray[@]}
