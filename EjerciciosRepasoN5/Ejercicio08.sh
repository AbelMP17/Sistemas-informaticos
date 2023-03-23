#!/bin/bash
#Autor: Abel Martínez Peinado

#Condiciones
if [[ $# -ne 1 ]]
then
	echo "Debes de introducir un parámetro que debe ser un directorio."
	exit 1
fi

if [[ ! -d $1 ]]
then
	echo "Debe ser un parámetro."
	exit 1
fi

#Variables
directorio=`basename "$1"`
fecha=`date +'%d_%m'`
nombre="${directorio}_$fecha.dat"

listaficheros=(`ls -1 $1 | sort -r`)

i=0

#Programa
for fich in ${listaficheros[@]}
do
	let i=i+1
	echo "$i- $fich" >> "/tmp/$nombre"
done
