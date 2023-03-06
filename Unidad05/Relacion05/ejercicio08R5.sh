#!/bin/bash
#Autor: AbelMP
# Comprobar si se ha pasado un directorio como parámetro
if [ -z "$1" ]; then
  echo "Debes indicar un directorio como parámetro."
  exit 1
fi

# Comprobar si el directorio existe
if [ ! -d "$1" ]; then
  echo "El directorio $1 no existe."
  exit 1
fi

# Crear el nombre del fichero temporal
nombre_fichero=$(basename "$1")
fecha=$(date "+%d_%m")
nombre_temporal="/tmp/${nombre_fichero}_${fecha}.dat"

# Obtener la lista de ficheros del directorio y ordenarla alfabéticamente de forma descendente
lista_ficheros=$(ls -r "$1")

# Escribir la lista de ficheros en el fichero temporal
contador=1
while read -r fichero; do
  echo "$contador - $fichero" >> "$nombre_temporal"
  contador=$((contador+1))
done <<< "$lista_ficheros"

echo "La lista de ficheros se ha guardado en $nombre_temporal."
