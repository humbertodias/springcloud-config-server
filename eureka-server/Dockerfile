FROM openjdk:17
RUN mkdir /app
WORKDIR /app
COPY build/libs/*.jar /app/eureka-server.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/eureka-server.jar"]
EXPOSE 9922