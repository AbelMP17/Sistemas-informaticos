#!/bin/bash
#Autor: AbelMP
echo "¡Bienvenido al juego de dados!"
echo "El juego consiste en 5 tiradas de dados. La máquina tirará los dados en primer lugar, seguida de su tirada."
echo "Si su tirada obtiene una puntuación mayor, ganará un punto. Al final de las 5 tiradas, el jugador con más puntos ganará el juego."

puntos_maquina=0
puntos_jugador=0

for i in $(seq 1 5); do
    echo "Tirada $i:"

    # Tirada de la máquina
    resultado_maquina=$((1+$RANDOM%6))
    echo "La máquina ha obtenido un $resultado_maquina."

    # Tirada del jugador
    read -p "Ingrese su apuesta (un número del 1 al 6): " apuesta
    resultado_jugador=$((1+$RANDOM%6))
    echo "Ha sacado un $resultado_jugador."

    # Comprobar si el jugador ha ganado
    if [[ $resultado_jugador -gt $resultado_maquina ]]; then
        echo "¡Ha ganado la tirada!"
        let puntos_jugador++
    elif [[ $resultado_jugador -eq $resultado_maquina ]]; then
        echo "¡Ha habido un empate!"
    else
        echo "Ha perdido la tirada."
        let puntos_maquina++
    fi

done

# Mostrar resultados
echo "El juego ha terminado."
echo "La máquina ha obtenido $puntos_maquina puntos."
echo "Usted ha obtenido $puntos_jugador puntos."

if [[ $puntos_jugador -gt $puntos_maquina ]]; then
    echo "¡Ha ganado el juego!"
elif [[ $puntos_jugador -eq $puntos_maquina ]]; then
    echo "¡El juego ha terminado en empate!"
else
    echo "Ha perdido el juego."
fi
