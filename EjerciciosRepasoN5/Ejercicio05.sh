#!/bin/bash
#Autor: Abel Martínez Peinado

#Grupos sin miembros
echo "====================="
echo "Grupos sin usuarios:"
echo "====================="
cat /etc/group | grep ":$" | cut -d":" -f1

#Grupos con usuarios
echo "===================="
echo "Grupos con usuarios:"
echo "===================="
cat /etc/group | grep -v ":$" | cut -d":" -f1,4
