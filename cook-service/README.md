# Cook Service

http://localhost:9977

Manual refresh

curl -X POST http://localhost:9977/actuator/refresh


Encrypted update

curl -X POST -H "Content-Type: text/plain" http://localhost:9988/encrypt -d=5000