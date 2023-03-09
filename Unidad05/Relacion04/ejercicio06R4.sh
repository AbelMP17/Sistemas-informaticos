#!/bin/bash
#Realiza los cambios necesarios para que salvador tenga como grupo
#secundario oficina1.

groups salvador; sudo usermod -aG oficina1 salvador
