.PHONY:

help:
		cat Makefile

up:
		docker-compose up -d

upb:
		docker-compose up -d --build

bd:
		docker-compose build

rbd:
		docker-compose build --no-cache


rs:
		docker-compose restart

down:
		docker-compose down

#clean-up:
		#docker system prune	# --volumes
		#docker images -aq | xargs docker rmi -f
		#docker volume rm $(docker volume ls --filter dangling=true -q)


app:
		docker-compose exec app ash

web:
		docker-compose exec web ash

db:
		docker-compose exec db bash


nginx-rs:
		# restart nginx
		docker-compose run --rm web service nginx restart

nginx-rl:
		# reload nginx config
		docker-compose run --rm web service nginx reload


rmlogs:
		rm -f logs/*
