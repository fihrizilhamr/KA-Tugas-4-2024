docker rmi tugas4-app tugas4-mysql tugas4-alpine tugas4-phpmyadmin

docker build -t tugas4-mysql ./mysql
docker build -t tugas4-app ./app
docker build -t tugas4-phpmyadmin ./phpmyadmin
docker build -t tugas4-alpine ./alpine
docker network create example1-network
