docker stop ubuntu_unsecure && \
  docker rm ubuntu_unsecure
docker build -t havardline/ubuntu_unsecure . && \
  docker run -d -P  --name ubuntu_unsecure havardline/ubuntu_unsecure 
