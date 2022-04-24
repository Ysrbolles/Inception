FROM debian:buster

# Installation Source https://www.digitalocean.com/community/tutorials/how-to-set-up-vsftpd-for-a-user-s-directory-on-debian-10

# update and install dependencies needed !!
RUN apt-get update && \
	apt-get install vsftpd -y && \
	apt-get install openssl -y

# get FTP server configuration
COPY ./conf/vsftpd.conf vsftpd.conf
COPY ./tools/start.sh start.sh

EXPOSE 21
EXPOSE 30000-30009

CMD [ "sh", "start.sh"]