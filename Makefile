DOCKER = docker-compose

all:
	$(DOCKER) -f srcs/docker-compose.yml build
	$(DOCKER) -f srcs/docker-compose.yml up

stop:
	$(DOCKER) -f srcs/docker-compose.yml stop

clean:
	docker system prune -af

.PHONY: all stop clean

