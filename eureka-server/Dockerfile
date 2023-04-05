FROM gradle:jdk17 as build
WORKDIR /app
COPY . .
RUN gradle clean build

FROM amazoncorretto:17 as runtime
RUN mkdir /app
WORKDIR /app
COPY --from=build /app/build/libs/*.jar /app/eureka-server.jar
EXPOSE 9922
HEALTHCHECK CMD curl --silent --fail --request GET http://localhost:9922/actuator/health/ping | grep UP || exit 1
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/eureka-server.jar"]