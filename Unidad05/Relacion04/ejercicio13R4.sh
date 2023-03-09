#!/bin/bash
#Realiza todos los pasos pertinentes para eliminar el grupo oficina3.

#Primero eliminamos a los usuarios del grupo
sudo deluser manuel oficina3
sudo deluser jorge oficina3
sudo deluser salvador oficina3
sudo deluser ameli oficina3

#verificamos que el grupo no tiene ningun usuario
getent group oficina3

#eliminamos el grupo
sudo groupdel oficina3
