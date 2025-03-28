#Usar una imagen base de Node.js
FROM openjdk:8-jdk-alpine

#Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

#Copiar package.json y package-lock.json para instalar dependencias
COPY target/*.jar app.jar

#Exponer el puerto en el que corre el servicio
EXPOSE 8080

#Comando para iniciar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]