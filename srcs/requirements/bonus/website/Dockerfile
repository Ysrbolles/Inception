FROM debian:buster

RUN apt-get update -y && \
	apt-get install apache2 php libapache2-mod-php php-curl php-cli php-mysql php-gd mariadb-server -y

RUN sed -i 's/Listen 80/Listen 3000/g' /etc/apache2/ports.conf 
COPY ./tools/start.sh start.sh
COPY ./tools/mywebsite /var/www/html/
RUN chown -R www-data:www-data /var/www/html/ && chmod 755 /var/www/html/


CMD [ "sh", "start.sh" ]