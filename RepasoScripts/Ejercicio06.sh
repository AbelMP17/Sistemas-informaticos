#!/bin/bash

#Condiciones
if [[ $# -eq 0 ]]
then
	echo "Debes escribir minimo un parametro."
	exit 1
fi

#Programa

for fich in $@
do
	if [[ -d $fich ]]
	then
		echo `ls -ld $fich`
	elif [[ -f $fich ]]
	then
		cat $fich
	else
		read -p "El parametro $fich no es ni un fichero ni un directorio."
		exit 1
	fi
done
