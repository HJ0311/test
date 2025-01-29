FROM debian:bullseye

RUN apt-get update -y && \
	apt-get install mariadb-server -y

COPY ./tools/ /var/www/

EXPOSE 3306

RUN service mysql start && mysql < /var/www/createdb.sql && rm -f /var/www/createdb.sql

CMD ["mysqld_safe"]