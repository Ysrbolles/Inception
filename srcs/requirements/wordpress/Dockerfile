FROM debian:buster

RUN apt-get update && \
	apt-get install wget -y && \
	apt-get install unzip -y && \
	apt-get install php-fpm php-mysql -y && \
	apt-get upgrade -y

COPY ./tools/start.sh .
# Download the latest WordPress version available at https://wordpress.org/download/ and extract it in a directory on your server:
RUN cd /tmp && wget https://wordpress.org/latest.zip 
RUN mkdir -p /var/www/html && unzip -d /var/www/html/ /tmp/latest.zip 
RUN mv /var/www/html/wordpress/wp-config-sample.php  /var/www/html/wordpress/wp-config.php
COPY ./tools/wp-config.php  /var/www/html/wordpress/wp-config.php
RUN sed -i 's/\/run\/php\/php7.3-fpm.sock/9000/g' /etc/php/7.3/fpm/pool.d/www.conf
RUN sed -i 's/;clear_env = no/clear_env = no/g' /etc/php/7.3/fpm/pool.d/www.conf
# Download redis cache and unzip it
RUN wget https://downloads.wordpress.org/plugin/redis-cache.2.0.22.zip
RUN unzip redis-cache.2.0.22.zip
RUN rm -rf redis-cache.2.0.22.zip
RUN service php7.3-fpm start
RUN chown www-data:www-data -R /var/www/html/wordpress/

EXPOSE 9000
 
CMD [ "sh", "start.sh" ]