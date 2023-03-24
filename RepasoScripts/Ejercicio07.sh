#!/bin/bash

array=()
while true
do
	read -p "Escribe un numero: " n
	if [[ $n -eq 0 ]]
	then
		break
	fi
		array+=($n)
done

for i in ${array[@]}
do
	echo $i
	sleep 1
done
