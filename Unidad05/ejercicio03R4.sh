#!/bin/bash
##Autor: AbelMP

clear
operacion=""
num1=0
num2=0

if [[ $# -ne 3 ]]
then
	echo 'El numero de parametros es incorrecto.'
	echo 'Introduce en el primer parametro el tipo de calculo aritmetico.'
	echo 'Y en el segundo y el tercero escribe numeros.'
	exit 1
fi

if [[ $1 != "suma" && $1 != "resta" && $1 != "producto" && $1 != "cociente" ]]
then
	echo 'El parametro debe ser suma, resta, producto o cociente.'
	exit 1
fi

num1=$2
num2=$3

function suma(){
	echo "La suma de $num1 y $num2 es: $(($num1 + $num2))"
	exit 0
}
function resta(){
	echo "La resta de $num1 y $num2 es: $(($num1 - $num2))"
	exit 0
}
function producto(){
	echo "El producto de $num1 y $num2 es: $(($num1 * $num2))"
	exit 0
}

function cociente(){
	if [[ $num1 -eq 0 ]]
	then
		echo "No se puede hacer una division entre 0."
		exit 1
	fi

	echo "El cociente de $num1 y $num2 es: $(($num1 / $num2))"
	exit 0
}

case $1 in
	suma)
		suma
	;;
	resta)
		resta
	;;
	producto)
		producto
	;;
	cociente)
		cociente
	;;
esac
