FROM debian:buster

RUN apt-get update && \
	apt-get install mariadb-server -y && \
	apt-get install net-tools -y

COPY ./tools/create_db.sql /tmp/create_db.sql
COPY ./tools/db.sql /tmp/db.sql

RUN service mysql start && mysql -u root < /tmp/create_db.sql

COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

CMD ["mysqld_safe"]