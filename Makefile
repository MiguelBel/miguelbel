up:
	docker-compose up

down:
	docker-compose down

build:
	docker-compose build

shell:
	docker-compose run app /bin/sh

release:
	time sh deploy.sh

check-links:
	docker-compose run app htmlproofer --checks-to-ignore=ImageCheck ./_site

generate-bookshelf:
	docker-compose run app ruby _books/generate_bookshelf.rb

add-book:
	docker-compose run app ruby _books/add_book.rb $(abid)