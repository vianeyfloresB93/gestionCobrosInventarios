# Usa una imagen base de OpenJDK con JRE optimizado

FROM openjdk:17-jdk-slim

# Crea un directorio de trabajo en el contenedor

WORKDIR /app

# Copia el archivo JAR de la aplicación al contenedor

COPY target/gestionCobrosInventarios-0.0.1-SNAPSHOT.jar app.jar

# Configura las variables de entorno

# ENV SPRING_PROFILES_ACTIVE=prod

ENV SPRING_DATA_MONGODB_URI=mongodb://admin:admin123@host:27017/cobrosInventarios

# Expone el puerto en el que se ejecuta la aplicación (por defecto 8080)

EXPOSE 8081

# Define el comando para ejecutar la aplicación

ENTRYPOINT ["java", "-jar", "app.jar"]
