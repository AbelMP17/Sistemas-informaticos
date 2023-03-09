#!/bin/bash
#Crea los usuarios salvador y ameli. Estos usuarios deben pertenecer
#únicamente al grupo oficina2, es decir, es su grupo primario.
#Además, tienen que tener definido su directorio de trabajo en
#/home/… que debe ser creado en la misma orden.

sudo mkdir /home/salvador; sudo useradd -g oficina2 -d /home/salvador salvador
sudo mkdir /home/ameli; sudo useradd -g oficina2 -d /home/ameli ameli
