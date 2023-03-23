#!/bin/bash
#Autor: Abel Martínez Peinado

#Variables
puntosMaquina=0
puntosJugador=0
tiradas=5
numAlM=0
numAlJ=0

clear
while [[ $tiradas -gt 0 ]]
do
	let numAlM=$((1+$RANDOM%6))
	read -p "Pulsa ENTER para que la maquina lanze los dados."
	echo "La maquina ha sacado un $numAlM."
	echo "===================================================="

	let numAlJ=$((1+$RANDOM%6))
	read -p "Lanza los dados..."
	echo "Has sacado un $numAlJ."

	if [[ $numAlM -gt $numAlJ ]]
	then
		let puntosMaquina=puntosMaquina+1
		echo "Pierdes."
		echo "==========="
	elif [[ $numAlM -lt $numAlJ ]]
	then
		let puntosJugador=puntosJugador+1
		echo "Ganas."
		echo "==========="
	elif [[ $numAlM -eq $numAlJ ]]
	then
		echo "Empate."
		echo "==========="
	fi
		echo "Puntos Jugador: $puntosJugador"
		echo "Puntos Maquina: $puntosMaquina"
		echo "==========================================="
		read -p "Pulsa ENTER para ir a la siguiente ronda."

		let tiradas=tiradas-1

	if [[ $tiradas -eq 0 ]]
	then
		if [[ $numAlM -gt $numAlJ ]]
	        then
	                echo "Pierdes."
	                echo "==========="
	        elif [[ $numAlM -lt $numAlJ ]]
	        then
	                echo "Ganas."
	                echo "==========="
	        fi
	fi
		clear
done

clear

echo "======================="
echo "La partida a finalizado"
echo "======================="
sleep 2
