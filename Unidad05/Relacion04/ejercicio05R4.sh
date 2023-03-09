#!/bin/bash
#Utiliza las instrucciones necesarias para que jorge y maria tenga
#como grupo secundario oficina2
#groups verifica el grupo actual en el que estan los usuarios
#-aG sirve para poner como grupo secundario oficina2
groups jorge; sudo usermod -aG oficina2 jorge
groups maria; sudo usermod -aG oficina2 maria
