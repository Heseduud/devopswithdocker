FROM openjdk:8
RUN apt-get update && apt-get install dos2unix
COPY ./spring-example-project .
RUN dos2unix ./mvnw
RUN ./mvnw package
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]