
docker rm -f mysql1_tugas4 app_tugas4 phpmyadmin_tugas4 alpine_tugas4

docker run -dit --name mysql1_tugas4 --network example1-network \
  -e MYSQL_DATABASE=mydb_tugas4 \
  -e MYSQL_PASSWORD=mydb6789tyui \
  -e MYSQL_ROOT_PASSWORD=mydb6789tyui \
  tugas4-mysql

docker run -dit --name app_tugas4 --network example1-network \
  -p 4444:80 \
  -e MODE=development \
  -e MYSQL_DATABASE=mydb_tugas4 \
  -e MYSQL_PASSWORD=mydb6789tyui \
  -e MYSQL_ROOT_PASSWORD=mydb6789tyui \
  tugas4-app

docker run -dit --name phpmyadmin_tugas4 --network example1-network \
  -p 44440:80 \
  -e PMA_HOST=mysql1 \
  -e MYSQL_ROOT_PASSWORD=mydb6789tyui \
  tugas4-phpmyadmin

docker run -dit --name alpine_tugas4 --network example1-network \
  tugas4-alpine
