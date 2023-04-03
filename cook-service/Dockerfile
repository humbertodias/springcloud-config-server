FROM openjdk:17
RUN mkdir /app
WORKDIR /app
COPY build/libs/*.jar /app/cook-service.jar
VOLUME /app/config
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/cook-service.jar"]
EXPOSE 9977