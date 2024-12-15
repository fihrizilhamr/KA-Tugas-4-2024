FROM alpine:3.9

RUN apk update && apk add --no-cache apache2 curl supervisor socat php7-intl php7-openssl php7-pecl-redis php7-sqlite3 php7-pdo_mysql php7-mbstring apache2-ssl php7-apache2 php7-intl php7-openssl php7-sqlite3 php7-pdo_mysql php7-mbstring apache2-ssl php7-apache2 apache2 apache2-ctl php7-pecl-ssh2 php7-bcmath php7-curl php7-json php7-pecl-couchbase php7-zip php7-mysqli mysql-client php7-pecl-mcrypt php7-pecl-redis supervisor

VOLUME ["/var/www/localhost/htdocs"]

RUN apk add composer php7-gmp php7-sodium  php7-xml supervisor

RUN rm -rf /tmp/* /var/cache/apk/*
ADD platform/start.sh /tmp
ADD platform/supervisord.conf /tmp/supervisord.conf
EXPOSE 80

ENV SESSIONAGE 60
ENV REAUTHENTICATION 60
ENV IPEXPIRE 120

ENTRYPOINT ["sh","-C","/tmp/start.sh"]

ENV MODE=development \
    MYSQL_DATABASE=mydb_tugas4 \
    MYSQL_PASSWORD=mydb6789tyui \
    MYSQL_ROOT_PASSWORD=mydb6789tyui \
    MYSQL_ROOT_HOST=%

COPY src/ /var/www/html/
COPY platform/httpd.conf /etc/apache2/apache2.conf
COPY platform/ssl.conf /etc/apache2/sites-enabled/ssl.conf
COPY platform/php.ini /etc/php7/php.ini
RUN apt-get update && apt-get install -y libapache2-mod-php \
    && docker-php-ext-install mysqli