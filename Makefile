build:
	docker compose build

up:
	docker compose up -d

down:
	docker compose down

rm:
	docker compose rm -s -v -f
	docker volume rm -f springcloud-config-server_grafana_data springcloud-config-server_prometheus_data

rmi:
	docker images --filter "dangling=true" -q | xargs -r docker rmi -f
	docker images --filter=reference="springcloud-config-server*" -q | xargs -r docker rmi -f

clean:	rm
	./gradlew clean

