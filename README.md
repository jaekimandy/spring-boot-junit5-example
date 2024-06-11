# Task 2: CI/CD Pipeline   
• Design a CI/CD pipeline for a sample application using a tool of your choice (e.g., Jenkins, GitLab CI, GitHub Actions).   
• The pipeline should include the following stages:   
o Code checkout from a version control system   
o Building and unit testing the application   
o Containerizing the application using Docker   
o Pushing the Docker image to a container registry   
o Deploying the application to a Kubernetes cluster   
• Provide the pipeline configuration code and a brief explanation of each stage.   

# Backgrounnd

'spring-boot-junit5-example' project is a Spring Java application with test code.    
Github actions was added onto this project to run 
1. Build the code
2. Run Test routines
3. Containerize the code into Docker
4. Push Docker image to Dockerhub.com
5. Deploy application to K8s using Kind



# Instructions
1. Go to Github Actions to run the Devops run

   
![GithubActions](https://github.com/jaekimandy/spring-boot-junit5-example/assets/99704906/1d110abf-5fb2-4f2f-8d1a-84be38148f7c)
   
3. Click on Build



  ![GithubActions3](https://github.com/jaekimandy/spring-boot-junit5-example/assets/99704906/887cf8b9-99ab-4906-bcb7-3cdb88daf36d)

  

3. See details of the build   


![GithubActions2](https://github.com/jaekimandy/spring-boot-junit5-example/assets/99704906/dda65fff-bd0e-4cee-9eac-369c2831db75)



## Spring Boot 2.7.5 & Open API 3

## Related Article: 
https://ruuben.medium.com/documenting-spring-boot-2-5-x-apis-using-openapi-3-0-6334984c6744

# Build guide
## Gradle

### Testing
First check that you are able to compile and pass the tests:
```
./gradlew test
```

For test report and code coverage: 

```
open build/reports/tests/test/index.html

./gradlew build jacocoTestReport
open build/reports/jacoco/test/html/index.html
```

### Start

To run the backend API locally: 

```
./gradlew bootRun
```

Otherwise, to build it as a fat jar and execute it:

```
./gradlew bootJar
java -jar build/libs/spring-boot-junit5-example-1.0-SNAPSHOT.jar
```

## Maven

### Testing
First check that you are able to compile and pass the tests:
```
mvn clean test
```

For test report and code coverage: 

```
mvn surefire-report:report
open target/site/surefire-report.html

mvn jacoco:report
open target/site/jacoco/index.html
```

### Start

To run the backend API locally: 

```
mvn spring-boot:run
```

Otherwise, to build it as a fat jar and execute it:

```
mvn clean install 
java -jar target/spring-boot-junit5-1.0-SNAPSHOT.jar
```

# Server check

To access to the database (H2) on dev mode:

```
open http://localhost:8080/h2-console 
```

API Documentation (Swagger): 

```
open http://localhost:8080/v3/api-docs
open http://localhost:8080/swagger-ui.html
```
