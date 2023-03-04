#!/bin/bash
#Autor: AbelMP
# Comprobamos que se haya pasado un directorio como parámetro
if [ -z "$1" ]; then
  echo "Debe especificar un directorio como parámetro"
  exit 1
fi

# Comprobamos que el directorio exista
if [ ! -d "$1" ]; then
  echo "El directorio especificado no existe"
  exit 1
fi

# Creamos la matriz con los ficheros del directorio
matrizficheros=( $(ls -a "$1") )

# Función para listar los ficheros de la matriz
function listar {
  echo "Ficheros en la matriz:"
  for fichero in "${matrizficheros[@]}"; do
    echo "- $fichero"
  done
}

# Función para eliminar un fichero de la matriz y del directorio
function borrar {
  echo -n "Escriba el nombre del fichero que desea borrar: "
  read fichero

  if [[ " ${matrizficheros[@]} " =~ " ${fichero} " ]]; then
    echo -n "¿Está seguro que desea borrar el fichero $fichero? (S/N): "
    read confirmacion
    if [ "$confirmacion" = "S" ]; then
      rm "$1/$fichero"
      matrizficheros=( ${matrizficheros[@]/$fichero} )
      echo "El fichero $fichero ha sido eliminado"
    fi
  else
    echo "El fichero $fichero no existe en la matriz"
  fi
}

# Menú principal
while true; do
  echo ""
  echo "Menú principal:"
  echo "1. Listar ficheros"
  echo "2. Borrar fichero"
  echo "3. Salir"
  echo -n "Seleccione una opción: "
  read opcion

  case $opcion in
    1) listar;;
    2) borrar;;
    3) exit 0;;
    *) echo "Opción inválida";;
  esac
done
