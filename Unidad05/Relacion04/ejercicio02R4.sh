#!/bin/bash
#Autor: AbelMP
####
##Crea los usuarios manuel, jorge, ana, maria. Estos usuarios deben
#pertenecer únicamente al grupo oficina1, es decir, es su grupo
#primario. Además, tienen que tener definido su directorio de trabajo
#en /home/… que debe ser creado en la misma orden.
####
sudo useradd -G oficina1 manuel
sudo useradd -G oficina1 jorge
sudo useradd -G oficina1 ana
sudo useradd -G oficina1 maria

