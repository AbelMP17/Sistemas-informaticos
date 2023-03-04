#!/bin/bash
##Autor: AbelMP
# Iterar sobre los nombres de ficheros pasados como argumentos
for fichero in "$@"; do
  # Comprobar si el fichero existe
  if [ ! -e "$fichero" ]; then
    echo "El fichero $fichero no existe"
  # Comprobar si el fichero es un directorio
  elif [ -d "$fichero" ]; then
    ls -ld "$fichero"
  # Comprobar si el fichero es un fichero regular
  elif [ -f "$fichero" ]; then
    cat "$fichero"
  # En cualquier otro caso, mostrar información extendida
  else
    echo "El tipo de fichero de $fichero no es válido"
    ls -ld "$fichero"
  fi
done

