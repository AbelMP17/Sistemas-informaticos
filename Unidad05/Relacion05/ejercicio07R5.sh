#!/bin/bash
#Autor: AbelMP

# Declarar un array vacío
mi_array=()

# Pedir datos al usuario hasta que escriba el número 0
while true; do
  read -p "Introduce un número (0 para salir): " numero
  # Comprobar si el número es 0
  if [ "$numero" -eq 0 ]; then
    break
  fi
  # Añadir el número al array
  mi_array+=("$numero")
done

# Mostrar todos los datos introducidos con un intervalo de tiempo de 1 segundo entre cada uno
for numero in "${mi_array[@]}"; do
  echo "$numero"
  sleep 1
done
