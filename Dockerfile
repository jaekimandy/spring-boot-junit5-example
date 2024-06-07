# Dockerfile
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

COPY /home/runner/work/spring-boot-junit5-example/spring-boot-junit5-example/build/libs/spring-boot-junit5-example-1.0-SNAPSHOT /app/app.jar

EXPOSE 80

CMD ["java", "-jar", "app.jar"]
