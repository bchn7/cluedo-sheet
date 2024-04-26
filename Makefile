build:
	DOCKER_BUILDKIT=0 docker-compose -f docker-compose.yml build --no-cache

up:
	DOCKER_BUILDKIT=0 docker-compose -f docker-compose.yml up --build --force-recreate -d

down:
	docker-compose down --volumes

app-bash:
	docker-compose exec php /bin/sh

migration:
	docker-compose exec php bin/console make:migration
	docker-compose exec php bin/console doctrine:migrations:migrate
