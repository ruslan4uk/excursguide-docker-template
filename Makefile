.DEFAULT_GOAL := help

.PHONY: copy-env up-proxy up-backend up-frontend up-adminpanel up-services \
		stop-proxy stop-backend stop-frontend stop-adminpanel stop-services

copy-env:
	cp .env ./adminpanel/ && cp .env ./backend/ && cp .env ./frontend/ && \
	cp .env ./proxy/ && cp .env ./services/

up-proxy:
	cd proxy && docker-compose up --build -d

# composer install and config permission
up-backend:
	cd backend && docker-compose up --build -d && docker-compose exec php composer install && sudo chown -R www-data:www-data .

up-frontend:
	cd frontend && docker-compose up --build -d

up-adminpanel:
	cd adminpanel && docker-compose up --build -d

up-services:
	cd services && docker-compose up --build -d

up-all: copy-env up-backend up-frontend up-adminpanel up-services

# Stop container
stop-proxy:
	cd proxy && docker-compose stop

stop-backend:
	cd backend && docker-compose stop

stop-frontend:
	cd frontend && docker-compose stop

stop-adminpanel:
	cd adminpanel && docker-compose stop

stop-services:
	cd services && docker-compose stop

stop-all: stop-backend stop-frontend stop-adminpanel stop-services

restart-all: stop-backend stop-frontend stop-adminpanel stop-services \
			copy-env up-backend up-frontend up-adminpanel up-services