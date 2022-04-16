FROM debian:buster

RUN apt-get update && \
    apt-get install wget -y && \
    apt-get install nano -y && \
    apt-get install php-fpm -y && \
    apt-get install php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip -y
# Extract the latest.tar.gz to /tmp/wordpress
RUN cd /tmp && wget https://wordpress.org/latest.tar.gz && tar -xzf latest.tar.gz
RUN mkdir -p /usr/share/nginx/wordpress
RUN mv /tmp/wordpress/* /usr/share/nginx/wordpress
#Grant ownership to www-data 
RUN chown -R www-data:www-data /usr/share/nginx/wordpress/
#Assign full permission to owner (www-data), and remove write permission for other users
RUN chmod -R 755 /usr/share/nginx/wordpress/

CMD [ "cat" ]