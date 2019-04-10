.PHONY: all build push deploy run stop

all: build push deploy

build:
	docker build -t lamiru/django-docker-aws:latest -f config/app/Dockerfile .

push:
	docker push lamiru/django-docker-aws:latest

deploy:
	eb deploy

run:
	docker-compose up -d

stop:
	docker-compose down
