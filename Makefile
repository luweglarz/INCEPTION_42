DOCKER_PS= $(shell docker ps -a -q)
DOCKER_IMAGES= $(shell docker images -q)
DOCKER_VOLUME_LS= $(shell docker volume ls -q)
DATA_PATH_WP= /home/${USER}/data/wordpress
DATA_PATH_MDB= /home/${USER}/data/mariadb

all: run

build:
	@if [ -d ${DATA_PATH_WP} ]; then	mkdir -p ${DATA_PATH_WP}; fi
	@if [ -d ${DATA_PATH_MDB} ]; then mkdir -p ${DATA_PATH_MDB}; fi


run: build
	docker-compose -f srcs/docker-compose.yml up --build 

stop:
	docker-compose -f srcs/docker-compose.yml stop

fclean: clean
	sudo rm -rf data

clean:
	docker-compose -f srcs/docker-compose.yml down
ifneq ($(strip $(DOCKER_PS)),)
	docker rm -f $(DOCKER_PS)
endif
ifneq ($(strip $(DOCKER_IMAGES)),)
	docker rmi $(DOCKER_IMAGES)
endif
ifneq ($(strip $(DOCKER_VOLUME_LS)),)
	docker volume rm $(DOCKER_VOLUME_LS)
endif

re: fclean all
