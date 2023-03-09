#!/bin/bash
#Añade la contraseña “hola” a todos los usuarios creados hasta el
#momento en la práctica, pero la contraseña de jorge, manuel y
#maría debe de caducar a los 30 días, les debe de avisar con 3 días de
#antelación y deben de cambiar la contraseña antes de 4 días. El resto
#de usuarios sin restricciones.

echo 'hola' | sudo passwd --stdin jorge; sudo chage -M 30 -W 3 -I 4 jorge
echo 'hola' | sudo passwd --stdin manuel; sudo chage -M 30 -W 3 -I 4 manuel
echo 'hola' | sudo passwd --stdin ana
echo 'hola' | sudo passwd --stdin maria; sudo chage -M 30 -W 3 -I 4 maria
echo 'hola' | sudo passwd --stdin salvador
echo 'hola' | sudo passwd --stdin ameli


