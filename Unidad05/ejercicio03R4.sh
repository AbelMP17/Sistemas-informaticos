#!/bin/bash
##Autor: AbelMP

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

function suma(){
	echo "La suma de $2 y $3 es: "
	echo $2+$3 | bc
}
function resta(){
	echo "La resta de $2 y $3 es: "
	echo $2-$3 | bc
}
function producto(){
	echo "El producto de $2 y $3 es: "
	echo $2*$3 | bc
}

function cociente(){
	echo "El cociente de $2 y $3 es: "
	echo $2/$3 | bc
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
