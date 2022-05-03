all: run

run:
	docker volume create --name=inception_files
	docker-compose up

stop:
	docker-compose stop

clean:
	docker system prune

fclean: clean

re: fclean all