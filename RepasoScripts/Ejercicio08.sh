#!/bin/bash

if [[ $# -ne 1]]
then
	echo "Debe de haber un parametro."

if [[ ! -d $1 ]]
then
	echo "El directorio no existe"
	exit 1
fi

dir=`basename "$1"`
fecha`date +'%d_%m'`
nombre="${dir}_$fecha.dat"

mktemp -p $nombre

for $1
echo ls -1 $1 | sort -r


