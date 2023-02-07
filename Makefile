COMPOSE_FILE = srcs/docker-compose.yml

DB_DATA = /home/chelmerd/data/db
WP_DATA = /home/chelmerd/data/wp

all:
	docker-compose --file $(COMPOSE_FILE) up -d

stop:
	docker-compose --file $(COMPOSE_FILE) down


fclean:
	docker-compose --file $(COMPOSE_FILE) down --volumes

re: fclean
	docker-compose --file $(COMPOSE_FILE) up --build -d
	