FROM debian:buster

RUN apt-get update && \
	apt-get install wget -y && \
	apt-get install unzip -y && \
	apt-get install php-fpm php-mysql -y && \
	apt-get upgrade -y
# Download the latest WordPress version available at https://wordpress.org/download/ and extract it in a directory on your server:
RUN cd /tmp && wget https://wordpress.org/latest.zip 
RUN mkdir -p /var/www/html && unzip -d /var/www/html/ /tmp/latest.zip 
RUN mv /var/www/html/wordpress/wp-config-sample.php  /var/www/html/wordpress/wp-config.php
COPY ./tools/wp-config.php  /var/www/html/wordpress/wp-config.php
RUN sed -i 's/\/run\/php\/php7.3-fpm.sock/9000/g' /etc/php/7.3/fpm/pool.d/www.conf
RUN service php7.3-fpm start
RUN chown www-data:www-data -R /var/www/html/wordpress/
# RUN sed/run/php/php7.3-fpm.sock
EXPOSE 9000
CMD [ "php-fpm7.3", "--nodaemonize" ]