FROM debian:buster

RUN apt-get update && \
    apt-get install mariadb-server -y

COPY ./tools/create_db.sql /tmp/create_db.sql

RUN mysql start && mysql -u root < /tmp/create_db.sql

CMD ["mysqld_safe"]