# Config Server

http://localhost:9988/cook-service/default
http://localhost:9988/cook-service/dev
http://localhost:9988/cook-service/prod
http://localhost:9988/cook-service/docker

# Eureka server

http://localhost:9922


# Cook Service

http://localhost:9977

Manual refresh

curl -X POST http://localhost:9977/actuator/refresh


# Ref
* https://datmt.com/backend/java/spring/spring-cloud-config-server-complete-guide/