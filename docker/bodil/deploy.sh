docker build -t havardline/bodil .
docker run --name bodil --rm -v ~/config:/root/config havardline/bodil
