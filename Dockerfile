# Dockerfile
FROM adoptopenjdk/openjdk17:alpine-jre

WORKDIR /app

COPY target/spring-boot-junit5-example-0.0.1-SNAPSHOT.jar /app/app.jar

EXPOSE 80

CMD ["java", "-jar", "app.jar"]
