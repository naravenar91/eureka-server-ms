#Imagen de Java compatible con tu pom.xml (Java 17)
FROM eclipse-temurin:17-jdk-alpine

# Instalamos curl para que el healthcheck del docker-compose funcione
RUN apk add --no-cache curl

VOLUME /tmp
#Copia el jar generado (Primero hacer mvn clean package)
COPY target/eureka-server-ms-0.0.1-SNAPSHOT.jar app.jar

# Exponemos el puerto
EXPOSE 8761

ENTRYPOINT ["java","-jar","/app.jar"]