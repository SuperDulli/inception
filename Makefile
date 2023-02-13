COMPOSE_FILE = srcs/docker-compose.yml

DB_DATA = /home/chelmerd/data/db
WP_DATA = /home/chelmerd/data/wp

all: | $(DB_DATA) $(WP_DATA)
	docker-compose --file $(COMPOSE_FILE) up -d

stop:
	docker-compose --file $(COMPOSE_FILE) down

re: stop
	docker-compose --file $(COMPOSE_FILE) up --build -d

$(DB_DATA):
	mkdir $@

$(WP_DATA):
	mkdir $@
	