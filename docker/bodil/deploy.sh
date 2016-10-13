docker build -t havardline/bodil .
docker run --name bodil --rm -v ~/volumes/bodil:/root/config havardline/bodil
