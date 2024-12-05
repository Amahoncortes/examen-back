#Establece la imagen base
FROM node:alpine

#Establece el directorio de trabajo a /app
WORKDIR /app

# Copiar el package.json al directorio de trabajo
COPY package.json /app

#Copia el codigo completo de la aplicación al directorio de trabajo
COPY . /app

# Habilitar extensiones necesarias
RUN npm install

# Exponer el puerto 80 para acceder al servicio
EXPOSE 8001

#Especifica el comando a ejecutar cuando el contenedor se inicia
CMD ["node","app.js"]