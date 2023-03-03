#!/bin/bash

###Programa menú

clear

continuar=0

while [[ continuar -eq 0 ]]
do
	echo "Opciones: "
	echo "1. Listar ficheros por vocal del directorio /etc."
	echo "2. Contar usuarios del sistemas que tienen la terminal /bin/bash."
	echo "3. Salir."
	read -p "- Seleccione una opcion (1, 2 y 3): " resp
	case $resp in
		1)
			#find -type f -name "[aeiou|AEIOU]*"
			ls -1 /etc/[aeiou]*
			read -p "Pulse ENTER para continuar..."
		;;
		2)
			echo "Los usuarios con consola bash son: "
			grep ":/bin/bash" /etc/passwd | cut -d":" -f1
			echo "El numero de usuarios son: "
			grep -c ":/bin/bash" /etc/passwd | cut -d":" -f1 | wc -l
			read -p "Pulse ENTER para continuar..."
		;;
		3)
			#Solo puedo salir si pulso s, S
			read -p "Deseas salir? (s/n): " sino
			if [[ $sino == "s" || $sino == "S" ]]
			then
				echo "saliendo..."
				exit 0
			fi
		;;
		*)
			echo "Opcion no válida."
			read -p "Pulse ENTER para continuar..."
		;;
	esac
done
