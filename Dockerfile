#Imagen de Java compatible con tu pom.xml (Java 17)
FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
#Copia el jar generado (Primero hacer mvn clean package)
COPY target/eureka-server-ms-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 8761