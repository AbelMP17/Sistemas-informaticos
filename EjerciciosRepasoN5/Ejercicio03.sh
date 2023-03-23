#!/bin/bash
#Autor: Abel Martíne Peinado

#Declaracion de condiciones
clear
if [[ $# -ne 3 ]]
then
	echo "Introduce 3 parametros, 1º (suma/resta/producto/cociente), 2º num, 3º num"
	exit 1
fi

#declaraciones de variables
calculo=$1
num1=$2
num2=$3

#declaracion de funciones
function probar(){
	case $calculo in
		"suma")
			suma
		;;
		"resta")
			resta
		;;
		"producto")
			producto
		;;
		"cociente")
			cociente
		;;
		*)
			read -p "Operacion no valida (suma, resta, producto, cociente)."
			exit 1
		;;
	esac

}

function suma(){
	echo "La suma de $num1 y $num2 es $(($num1 + $num2))"
	read -p "Pulsa para salir..."
	exit 0
}
function resta(){
	echo "La resta de $num1 y $num2 es $(($num1 - $num2))"
	read -p "Pulsa para salir..."
	exit 0
}
function producto(){
	echo "El producto de $num1 y $num2 es $(($num1 * $num2))"
	read -p "Pulsa para salir..."
	exit 0
}
function cociente(){
	echo "El cociente de $num1 y $num2 es $(($num1 / $num2))"
	read -p "Pulsa para salir..."
	exit 0
}

probar
