build:
	docker compose build

up:
	docker compose up

down:
	docker compose down

rm:
	docker compose rm -s -v -f
	docker volume rm -f springcloud-config-server_grafana_data springcloud-config-server_prometheus_data

clean:	rm
	./gradlew clean

