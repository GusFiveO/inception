DOCKER = docker compose

all:
	mkdir -p /home/alorain/data/mysql
	mkdir -p /home/alorain/data/wp
	$(DOCKER) -f srcs/docker-compose.yml build
	$(DOCKER) -f srcs/docker-compose.yml up

stop:
	$(DOCKER) -f srcs/docker-compose.yml stop

clean:
	docker system prune -af

vclean:
	rm -rf /home/alorain/data/mysql
	rm -rf /home/alorain/data/wp

re: clean vclean all

.PHONY: all stop clean re

