FROM debian:buster

RUN apt-get update -y && \
	apt-get install git -y && \
	apt-get install apache2 php libapache2-mod-php php-curl php-cli php-gd mariadb-server -y

# change the listener port of the apache2 server
RUN sed -i 's/Listen 80/Listen 3000/g' /etc/apache2/ports.conf 
COPY ./tools/start.sh start.sh
RUN rm -rf /var/www/html/
# Clone the website repository
RUN  git clone https://github.com/Ysrbolles/Multiverse.git /var/www/html/

CMD [ "sh", "start.sh" ]