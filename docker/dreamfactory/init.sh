#!/bin/bash
# Following instructions from http://blog.dreamfactory.com/running-dreamfactory-as-a-docker-container
docker pull dreamfactorysoftware/df-docker
docker run -d --name df-mysql -e "MYSQL_ROOT_PASSWORD=root" -e "MYSQL_DATABASE=dreamfactory" -e "MYSQL_USER=df_admin" -e "MYSQL_PASSWORD=df_admin" mysql
docker run -d --name df-redis redis
docker run -d --name df-web -p 0.0.0.0:80:80 -e "DB_HOST=db" -e "DB_USERNAME=df_admin" -e "DB_PASSWORD=df_admin" -e "DB_DATABASE=dreamfactory" -e "REDIS_HOST=rd" -e "REDIS_DATABASE=0" -e "REDIS_PORT=6379" --link df-mysql:db --link df-redis:rd dreamfactorysoftware/df-docker


# the .env file needs to be present. This issue is not resolved yet.
#docker run -d -p 127.0.0.1:80:80 -v /home/core/dreamfactory/.env:/opt/dreamfactory/.env --link df-mysql:db dreamfactorysoftware/df-docker
