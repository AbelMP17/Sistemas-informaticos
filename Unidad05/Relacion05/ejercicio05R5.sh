#!/bin/bash
##Autor: AbelMP
#El script utiliza el archivo /etc/group para obtener
#información sobre los grupos del sistema.

echo "Grupos sin miembros:"
echo "===================="

#La primera parte del script utiliza el comando awk para
#obtener la lista de grupos sin miembros.

# Obtener la lista de grupos sin miembros

grupos_sin_miembros=($(awk -F: 'NF<4 {print $1}' /etc/group))

# Mostrar los nombres de los grupos sin miembros
for grupo in "${grupos_sin_miembros[@]}"; do
  echo "- $grupo"
done

#La segunda parte del script utiliza un bucle while y el comando read para iterar sobre los grupos del sistema y obtener
#información sobre ellos.
echo
echo "Grupos con miembros:"
echo "====================="

# Iterar sobre todos los grupos del sistema
while IFS=: read -r nombre_grupo contrasena_grupo id_grupo lista_miembros; do
  # Comprobar si el grupo tiene miembros
  if [ -n "$lista_miembros" ]; then
    echo "Nombre del grupo: $nombre_grupo"
    echo "Miembros del grupo: $lista_miembros"
    echo
  fi
done < /etc/group
