FROM php:7.4-apache

ENV MODE=development \
    MYSQL_DATABASE=mydb_tugas4 \
    MYSQL_PASSWORD=mydb6789tyui \
    MYSQL_ROOT_PASSWORD=mydb6789tyui \
    MYSQL_ROOT_HOST=%

COPY src/ /var/www/html/
COPY platform/httpd.conf /etc/apache2/apache2.conf
COPY platform/ssl.conf /etc/apache2/sites-enabled/ssl.conf
COPY platform/log /var/log/
COPY /platform/php.ini /etc/php7/php.ini
RUN apt-get update && apt-get install -y libapache2-mod-php \
    && docker-php-ext-install mysqli