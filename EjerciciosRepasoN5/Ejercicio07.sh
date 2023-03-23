#!/bin/bash
#Autor: Abel Martínez Peinado

#declaracion de variables
miarray=()

while true
do
	read -p "Introduce un número(0 para salir): " num
	if [[ $num -eq 0 ]]
	then
		read -p "Saliendo..."
		break
	fi
	miarray+=($num)
done

for num in ${miarray[@]}
do
	echo $num
	sleep 1
done
