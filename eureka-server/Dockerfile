FROM openjdk:17
RUN mkdir /app
WORKDIR /app
COPY build/libs/*.jar /app/service-discovery.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/service-discovery.jar"]
EXPOSE 9922