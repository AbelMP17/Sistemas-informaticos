#!/bin/bash
#Autor: AbelMP
####
##Crea los usuarios manuel, jorge, ana, maria. Estos usuarios deben
#pertenecer únicamente al grupo oficina1, es decir, es su grupo
#primario. Además, tienen que tener definido su directorio de trabajo
#en /home/… que debe ser creado en la misma orden.
####
sudo mkdir /home/manuel; sudo useradd -g oficina1 -d /home/manuel manuel
sudo mkdir /home/jorge; sudo useradd -g oficina1 -d /home/jorge jorge
sudo mkdir /home/ana; sudo useradd -g oficina1 -d /home/ana ana
sudo mkdir /home/maria; sudo useradd -g oficina1 -d /home/maria maria
