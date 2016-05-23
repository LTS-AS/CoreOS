docker build -t havardline/ubuntu_unsecure . && \
  docker run -d -P  --name ubuntu_unsecure havardline/ubuntu_unsecure 
