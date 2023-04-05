FROM gradle:jdk17 as build
WORKDIR /app
COPY . .
RUN gradle clean build

FROM amazoncorretto:17 as runtime
RUN mkdir /app
WORKDIR /app
COPY --from=build /app/build/libs/*.jar /app/cook-service.jar
VOLUME /app/config
EXPOSE 9977
HEALTHCHECK CMD curl --silent --fail --request GET http://localhost:9977/actuator/health/ping | grep UP || exit 1
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/cook-service.jar"]