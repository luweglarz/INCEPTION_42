DOCKER_PS= $(shell docker ps -a -q)
DOCKER_IMAGES= $(shell docker images -q)
DOCKER_VOLUME_LS= $(shell docker volume ls -q)
DATA_PATH_WP= /home/${USER}/data/wordpress
DATA_PATH_MDB= /home/${USER}/data/mariadb

all: build

build:
	mkdir -p ${DATA_PATH_WP}
	mkdir -p ${DATA_PATH_MDB}
	docker-compose -f srcs/docker-compose.yml up -d --build 
	@echo "`tput  setaf 2` Server build and up"

run:
	docker-compose -f srcs/docker-compose.yml start

stop:
	docker-compose -f srcs/docker-compose.yml stop

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

re: clean all
