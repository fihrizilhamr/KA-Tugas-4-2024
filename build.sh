docker rm -f tugas4-mysql:latest
docker build -t tugas4-mysql ./mysql
docker rm -f tugas4-app:latest
docker build -t tugas4-app ./app
docker rm -f tugas4-phpmyadmin:latest
docker build -t tugas4-phpmyadmin ./phpmyadmin
docker rm -f tugas4-alpine:latest
docker build -t tugas4-alpine ./alpine
docker network create example1-network
