# Práctica 14. Docker y Docker Compose
<p align="center">
<img src="https://raw.githubusercontent.com/drain113/pictures/main/Fotos/homepage-docker-logo.png" width="" height="320" />  

<br>   <br/>  


# Índice

### [1. ¿Qué es Docker?](#¿qué-es-docker)

### [2. Introducción](#introducción)

### [3. Ejercicios](#ejercicios)

### [4. Conclusión](#conclusión)

<br>   <br/>   

# ¿Qué es Docker?
El sistema de software de TI llamado "Docker" es la tecnología de organización en contenedores que posibilita la creación y el uso de los contenedores de Linux®.

Docker es una plataforma de contenedores que permite a los desarrolladores empaquetar una aplicación y todas sus dependencias en un contenedor virtual, lo que proporciona portabilidad y consistencia en diferentes entornos de ejecución. Con Docker, los desarrolladores pueden crear, probar y desplegar aplicaciones de forma rápida y eficiente, sin preocuparse por las diferencias en los sistemas operativos y las configuraciones de los servidores.

La tecnología Docker utiliza el kernel de Linux y sus funciones, como los grupos de control y los espacios de nombre, para dividir los procesos y ejecutarlos de manera independiente. El propósito de los contenedores es ejecutar varios procesos y aplicaciones por separado para que se pueda aprovechar mejor la infraestructura y, al mismo tiempo, conservar la seguridad que se obtendría con los sistemas individuales.


<br>   <br/>   

# Introducción
En la práctica 14 vamos a desplegar aplicaciones haciendo uso de Docker y Docker Compose (Herramienta para correr  aplicaciones multi contenedores de Docker).

Para poder ejecutar estas aplicaciones mediante Docker vamos a necesitar hacer dos instalaciones previas:

* Git  
``` bash
sudo apt-get update
sudo apt-get install git
``` 
  

* Docker  

Actualizar repositorios
``` bash
sudo apt-get update
```
Instalar dependencias necesarias.
``` bash
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
```
Agregar la GPG de Docker oficial
``` bash
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```
Preparar el directorio
``` bash
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```
Instalar Docker
``` bash
 sudo apt-get update
 sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```


# Ejercicios
Esta práctica consta de 3 ejercicios.    
En la propia carpeta de cada ejercicio se encuentra un readme con toda la información relacionada al funcionamiento y despliegue de cada aplciación.   
    
      
1. **Práctica 14.1**

[Instalación de WordPress usando contenedores Docker y Docker Compose.](14.1/)


2. **Práctica 14.2**

[Instalación de PrestaShop usando contenedores Docker y Docker Compose.](14.2/)



3. **Práctica 14.4**

[Dockerizar una web estática y publicarla en Docker Hub.](14.4/)


<br>   </br>
# Conclusión

En definitiva, Docker simplifica el proceso de creación y gestión de aplicaciones, permitiendo que los desarrolladores se centren en la innovación y el desarrollo de nuevas características.

<break>   </break>  
-Guille  
<break>   </break>  
 [![](https://preview.redd.it/enr7hhg3zku81.png?auto=webp&s=fc017e6a82f91cc81ab3dd7d0388ef57bfd72c30)](https://github.com/drain113)
