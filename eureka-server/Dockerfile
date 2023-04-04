FROM gradle:jdk17 as build-image
WORKDIR /app
COPY . .
RUN gradle clean build

FROM openjdk:17
RUN mkdir /app
WORKDIR /app
COPY --from=build-image /app/build/libs/*.jar /app/eureka-server.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/eureka-server.jar"]
EXPOSE 9922