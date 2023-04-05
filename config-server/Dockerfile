FROM gradle:jdk17 as build
WORKDIR /app
COPY . .
RUN gradle clean build

FROM amazoncorretto:17-alpine as runtime
RUN mkdir /app
WORKDIR /app
COPY --from=build /app/build/libs/*.jar /app/config-server.jar
VOLUME /app/config
EXPOSE 9988
HEALTHCHECK CMD wget -q --no-verbose --tries=1 -O - http://localhost:9988/actuator/health/ping | grep UP || exit 1
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/config-server.jar"]
