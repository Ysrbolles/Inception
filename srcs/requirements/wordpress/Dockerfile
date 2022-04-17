FROM debian:buster

RUN apt-get update && \
    apt-get install wget -y && \
    apt-get install unzip -y && \
    apt-get install vim -y && \
    apt-get install nano -y && \
    apt-get install php-fpm -y && \
    apt-get install php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip -y
# Download the latest WordPress version available at https://wordpress.org/download/ and extract it in a directory on your server:
RUN cd /tmp && wget https://wordpress.org/latest.zip 
RUN mkdir -p /var/www/html && unzip -d /var/www/html/ /tmp/latest.zip 
RUN chown www-data:www-data -R /var/www/html/wordpress/
RUN mv /var/www/html/wordpress/wp-config-sample.php  /var/www/html/wordpress/wp-config.php
COPY ./tools/wp-config.php  /var/www/html/wordpress/wp-config.php


EXPOSE 9000
CMD ["/bin/bash"]