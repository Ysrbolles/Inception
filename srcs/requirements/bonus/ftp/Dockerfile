FROM debian:buster

# Installation Source https://www.digitalocean.com/community/tutorials/how-to-set-up-vsftpd-for-a-user-s-directory-on-debian-10

RUN apt-get update && \
	apt-get install vsftpd -y && \
	apt-get install openssl -y

COPY ./tools/vsftpd.conf vsftpd.conf
COPY ./tools/start.sh start.sh




EXPOSE 21
EXPOSE 30000-30009

CMD [ "sh", "start.sh", "&&", "service", "vsftpd", "restart"]