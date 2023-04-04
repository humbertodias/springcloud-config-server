FROM gradle:jdk17 as build-image
WORKDIR /app
COPY . .
RUN gradle clean build

FROM openjdk:17 as runtime
RUN mkdir /app
WORKDIR /app
COPY --from=build-image /app/build/libs/*.jar /app/config-server.jar
VOLUME /app/config
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/config-server.jar"]
EXPOSE 9988