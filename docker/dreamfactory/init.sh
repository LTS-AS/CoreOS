#!/bin/bash
# Following instructions from http://blog.dreamfactory.com/running-dreamfactory-as-a-docker-container
docker pull dreamfactorysoftware/df-docker
docker run -d --name df-mysql -e "MYSQL_ROOT_PASSWORD=root" -e "MYSQL_DATABASE=dreamfactory" -e "MYSQL_USER=df_admin" -e "MYSQL_PASSWORD=df_admin" mysql
# the .env file needs to be present. This issue is not resolved yet.
docker run -d -p 127.0.0.1:80:80 -v /home/core/dreamfactory/.env:/opt/dreamfactory/.env --link df-mysql:db dreamfactorysoftware/df-docker
