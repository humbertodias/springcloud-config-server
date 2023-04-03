FROM openjdk:17
RUN mkdir /app
WORKDIR /app
COPY build/libs/*.jar /app/config-server.jar
VOLUME /app/config
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/config-server.jar"]
EXPOSE 9988