docker build -t havardline/nginx .
docker run --name nginx.1.service -d  -p 80:80 -p 443:443 havardline/nginx
