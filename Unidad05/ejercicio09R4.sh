#!/bin/bash
#Autor: AbelMP
# Directorio temporal donde se creará la carpeta jaula
temp_dir=$(mktemp -d)

# Se lee el archivo ficheros.dat
while read -r file; do
  if [ -f "$file" ]; then
    # Si el archivo existe se copia a la carpeta jaula
    cp "$file" "$temp_dir/jaula/"
    echo "Se ha copiado el archivo $file a la carpeta jaula."
  else
    # Si el archivo no existe se muestra un mensaje
    echo "El archivo $file no existe y no se ha podido copiar."
  fi
done < "ficheros.dat"

# Se muestran los resultados
echo "Se han copiado $(ls -1 "$temp_dir/jaula" | wc -l) archivos a la carpeta jaula."
echo "Se han encontrado $(grep -cv '^$' ficheros.dat) archivos en ficheros.dat."
echo "Se han encontrado $(grep -c 'El archivo.*no existe' /dev/stderr) errores al copiar archivos."

# Se elimina el directorio temporal
rm -rf "$temp_dir"
