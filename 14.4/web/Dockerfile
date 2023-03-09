# Imagen base
FROM nginx

# Directorio de trabajo
WORKDIR /usr/share/nginx/html/

# Instalar Git
RUN apt update \
    && apt install git -y

# Código de Jose juan de 2048
RUN git clone https://github.com/josejuansanchez/2048.git && mv 2048/* .

# Puerto Nginx
EXPOSE 80

# Comando al ejecutar contenedor 
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
