FROM openjdk:8 as build
COPY ./spring-example-project .
RUN apt-get update && apt-get install dos2unix && \
	dos2unix ./mvnw && \
	./mvnw package

FROM openjdk:8-alpine
WORKDIR /usr/src/app
COPY --from=build /target/docker-example-1.1.3.jar ./target/
RUN chmod a+x . && \
	addgroup -S appgroup && adduser -S --disabled-password appuser -G appgroup && \
	chown appuser .
USER appuser
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]