#!/bin/bash
#Añade los usuarios manuel, jorge, salvador y ameli al grupo
#oficina3, el grupo para los usuarios será secundario.

sudo usermod -aG oficina3 manuel
sudo usermod -aG oficina3 jorge
sudo usermod -aG oficina3 salvador
sudo usermod -aG oficina3 ameli
