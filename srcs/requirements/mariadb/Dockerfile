FROM debian:buster

# update and install dependencies needed !!
RUN apt-get update && \
	apt-get install mariadb-server -y && \
	apt-get install net-tools -y

# get the setup of the create_db
COPY ./tools/create_db.sql /tmp/create_db.sql

# Create a MariaDB database for WordPress on the Database VPS
RUN service mysql start && mysql -u root < /tmp/create_db.sql

# configure mariadb server
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

CMD ["mysqld_safe"]