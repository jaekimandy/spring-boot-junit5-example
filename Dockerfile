# Dockerfile
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

COPY build/libs/spring-boot-junit5-example-1.0-SNAPSHOT.jar /app/app.jar

EXPOSE 80

CMD ["java", "-jar", "app.jar"]
