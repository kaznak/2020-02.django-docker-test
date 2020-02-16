
build:
	docker-compose build

up:
	mkdir -p data/
	rm -f data/.delete_me
	docker-compose up

migrate:
	docker-compose run web python manage.py makemigrations polls
	# docker-compose run web python manage.py sqlmigrate polls 0001
	docker-compose run web python manage.py migrate

test:
	docker-compose run web python manage.py test polls
