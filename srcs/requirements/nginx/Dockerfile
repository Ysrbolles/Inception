FROM debian:buster

# update and install dependencies needed !!
RUN apt-get update && \
	apt-get install nginx -y && \
	apt-get install openssl -y

# Configuration of the certificate ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MA/ST=KHOURIBGA/L=Kkouribga/O=1337/OU=My Department/CN=Inception"

# set the default config of nginx
COPY ./conf/default /etc/nginx/sites-available/

# Expose the port of the server to external
EXPOSE 443

# run the nginx server in foreground
CMD ["nginx", "-g", "daemon off;"]