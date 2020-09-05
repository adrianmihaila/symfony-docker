install:
	docker-compose exec php-fpm composer create-project symfony/skeleton .

up:
	docker-compose up -d

build:
	docker-compose build