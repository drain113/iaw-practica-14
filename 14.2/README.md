# Práctica 14.2: Instalación de PrestaShop usando contenedores Docker y Docker Compose.
<p align="center">
<img src="https://raw.githubusercontent.com/drain113/pictures/main/Fotos/1200px-Prestashop.svg.png" width="" height="120" style="margin-right: 50px;" />
<img src="https://raw.githubusercontent.com/drain113/pictures/main/Fotos/homepage-docker-logo.png" width="" height="120" style="margin-right: 50px;" />
<img src="https://raw.githubusercontent.com/drain113/pictures/main/Fotos/Ansible_logo.svg.png  " width="" height="120"  />

</p>
<br>   <br/>  


# Índice

### [1. Funcionamiento](#funcionamiento)

### [2. Despliegue](#despliegue)

### [3. Conclusión](#conclusión)

<br> <br>  

# Funcionamiento
La práctica 14.2 se basa en el despliegue de la aplicación Prestashop haciendo uso de contenedores Docker y la herramienta Docker Compose.

Funciona, al igual que la práctica 14.1 de la siguiente manera:  

Un main.tf escrito en Terraform para desplegar la infraestructura necesaria para correr la aplicación (EC2 y Grupos de seguridad).

Una carpeta con el contenido del Docker compose y otra carpeta con el contenido escrito en Ansible para desplegar la aplicación mediante Ansible.

El contenido del Docker Compose tiene todo lo necesario para desplegar Wordpress , MySQL y PhpMyAdmin Dockerizado.
<br> <br> 


# Despliegue
Como antes he mencionado, la práctica consta de dos carpetas.
<br>   </br> 

1. **Terraform**  
Ejecutaremos el Terraform haciendo uso de
``` terraform
terraform innit
terraform apply main.tf
``` 
Para poder ejecutar esto debemos de tener Terraform y AWS-Cli instalado en el sistema.
También debemos de determinar nuestra información de AWS en **~/.aws/credentials**.     

<br>

2. **Ansible**    
Una vez tengamos la infraestructura de AWS formada gracias a Terraform, vamos a ejecutar mediante Ansible, el archivo Docker compose que contiene todo lo necesario para desplegar Wordpress en nuestra máquina.
``` ansible
ansible-playbook -i inventario main.yml
``` 
<br>

# Conclusión

En definitiva, Docker simplifica el proceso de creación y gestión de aplicaciones, permitiendo que los desarrolladores se centren en la innovación y el desarrollo de nuevas características.  
<br>
-Guille  
<br>
 [![](https://preview.redd.it/enr7hhg3zku81.png?auto=webp&s=fc017e6a82f91cc81ab3dd7d0388ef57bfd72c30)](https://github.com/drain113)
