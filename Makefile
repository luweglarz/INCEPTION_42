all: run

run:
	docker-compose up

stop:
	docker-compose stop

clean:
	docker system prune

fclean: clean

re: fclean all