docker run -d --name mysql1 --network example1-network \
  -e MYSQL_DATABASE=mydb_tugas4 \
  -e MYSQL_PASSWORD=mydb6789tyui \
  -e MYSQL_ROOT_PASSWORD=mydb6789tyui \
  tugas4-mysql

docker run -d --name app --network example1-network \
  -p 4444:80 \
  -e MODE=development \
  -e MYSQL_DATABASE=mydb_tugas4 \
  -e MYSQL_PASSWORD=mydb6789tyui \
  -e MYSQL_ROOT_PASSWORD=mydb6789tyui \
  tugas4-app

docker run -d --name phpmyadmin --network example1-network \
  -p 44440:80 \
  -e PMA_HOST=mysql1 \
  -e MYSQL_ROOT_PASSWORD=mydb6789tyui \
  tugas4-phpmyadmin

docker run -d --name alpine --network example1-network \
  tugas4-alpine
