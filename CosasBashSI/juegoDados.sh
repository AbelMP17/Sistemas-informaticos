#!/bin/bash

dado1=0
dado2=0
suma=0

dadoM1=0
dadoM2=0
sumaM=0

contador=0

while [[ contador -eq 0 ]]
do
	read -p "Quieres jugar (s/n): " opc
	if [[ $opc == "s" ]]
	then
		let dado1=$(($RANDOM%6))
		let dado2=$(($RANDOM%6))
		echo "Dado 1: "$dado1
		echo "Dado 2: "$dado2
		let suma=dado1+dado2
		echo "Suma total: "$suma
		sleep 3
		echo "turno de la máquina..."
		let dadoM1=$(($RANDOM%6))
                let dadoM2=$(($RANDOM%6))
                echo "Dado 1: "$dadoM1
                echo "Dado 2: "$dadoM2
                let sumaM=dadoM1+dadoM2
                echo "Suma total: "$sumaM

		echo "------------------"
		echo "Hora de la comparación"
		echo "=================="

		if [[ suma -ge sumaM ]]
		then
			echo "Has ganado."
			echo "============"
			sleep 3
		else
			echo "Has perdido"
			echo "============"
			sleep 3
		fi
	else
		echo "Saliendo..."
		sleep 1
		exit 0
	fi
done
