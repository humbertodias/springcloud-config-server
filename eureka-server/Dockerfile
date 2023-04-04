FROM gradle:jdk17 as build-image
WORKDIR /app
COPY . .
RUN gradle clean build

FROM openjdk:17
RUN mkdir /app
WORKDIR /app
COPY --from=build-image /app/build/libs/*.jar /app/eureka-server.jar
EXPOSE 9922
HEALTHCHECK --interval=10s --timeout=3s --retries=1 CMD curl --silent --fail --request GET http://localhost:9922/actuator/health/ | grep UP || exit 1
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/eureka-server.jar"]