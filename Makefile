build-jar:
	./gradlew build

build-docker:
	docker compose build

up:
	docker compose up

down:
	docker compose down

clean:
	./gradlew clean
	docker compose rm -v -f
