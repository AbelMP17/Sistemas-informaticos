#!/bin/bash
#Autor: Abel Martinez Peinado

#Carpeta temporal
if [[ ! -d "/tmp/jaula" ]]
then
	mkdir -p "/temp/jaula"
fi

#Inicializar contadores
copiados=0
no_copiados=0

#Programa
while read -r archivo
do
	if [ -f "$archivo" ]
	then
		nombreArchivo=`basename "$archivo"`
		cp "$archivo" "/tmp/jaula/$nombreArchivo
		let copiados=copiados+1
	else
		let no_copiados=no_copiados+1
	fi
done < "ficheros.dat"

echo "Se copiaron $copiados archivos a la carpeta temporal."
echo "No se encontraron $no_copiados archivos para copiar."
