DOCKER_COMPOSE = docker compose -f docker-compose.yml $(DOCKER_FILE)
MKFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
CURRENT_DIRECTORY := $(notdir $(patsubst %/,%,$(dir $(MKFILE_PATH))))

init:
	$(DOCKER_COMPOSE) build --pull
	$(DOCKER_COMPOSE) up -d

down:
	$(DOCKER_COMPOSE) down --remove-orphans

start:
	$(DOCKER_COMPOSE) up -d --remove-orphans --force-recreate --build

stop:
	$(DOCKER_COMPOSE) stop

down-clear:
	$(DOCKER_COMPOSE) down -v --remove-orphans

pull:
	$(DOCKER_COMPOSE) pull

remove-volume: down
	docker volume rm $(CURRENT_DIRECTORY)_mongodb_storage
