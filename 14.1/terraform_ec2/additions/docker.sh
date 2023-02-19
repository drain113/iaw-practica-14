#!/bin/bash

# Instalar Docker (+ Docker Compose)

set -x
sudo apt-get update

# Instalar paquetes requeridos para Docker
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Añadir GPG de Docker
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Descargar repositorio de Docker
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Instalar Docker
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Añadimos el usuario al grupo docker
sudo usermod -aG docker $USER

# Arrancar Docker al iniciar el sistema y arrancarlo ahora.
sudo systemctl enable docker
sudo systemctl start docker