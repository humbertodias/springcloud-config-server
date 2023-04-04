# Docker

./gradlew build

docker compose up

# Config Server

http://localhost:9988/cook-service/docker

# Eureka server

http://localhost:9922

# Cook Service

Current count

http://localhost:4000

Manual refresh

edit 

config-server/src/main/resources/config/cook-service-docker.properties

then refresh

curl -X POST http://localhost:4000/actuator/refresh

# Bus config

RabbitMQ

http://localhost:15672/

admin

admin

Bus refresh

curl -X POST http://localhost:4000/actuator/busrefresh

Metrics

http://localhost:15692/metrics

# Prometheus

http://localhost:9090/targets

# Grafana

http://localhost:3000

admin

admin


# Ref

* [Config Server](https://datmt.com/backend/java/spring/spring-cloud-config-server-complete-guide/)
* [Load balance](https://medium.com/@vinodkrane/microservices-scaling-and-load-balancing-using-docker-compose-78bf8dc04da9)