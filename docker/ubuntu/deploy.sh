# Stop and remove old container
docker stop ubuntu_unsecure && \
  docker rm ubuntu_unsecure
  
# Pull latest code, build and run container
git pull && \
  docker build -t havardline/ubuntu_unsecure . && \
  docker run -d -p 4000:22 --name ubuntu_unsecure havardline/ubuntu_unsecure 
