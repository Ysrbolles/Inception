FROM debian:buster

# Installation Source https://www.digitalocean.com/community/tutorials/how-to-set-up-vsftpd-for-a-user-s-directory-on-debian-10

RUN apt-get update && \
	apt-get install vsftpd -y && \
	apt-get install openssl -y

COPY ./tools/start.sh start.sh
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem -subj "/C=MA/ST=KHOURIBGA/L=Kkouribga/O=1337/OU=My Department/CN=localhost:21"
RUN service vsftpd start
RUN cp /etc/vsftpd.conf /etc/vsftpd.conf.orig
RUN adduser ybolles
RUN echo "ybolles:ybolles" | chpasswd
RUN mkdir -p /home/ybolles/ftp 
RUN chown ybolles:ybolles /home/ybolles/ftp
RUN chmod a-w /home/ybolles/ftp
RUN mkdir /home/ybolles/ftp/files
RUN echo "ybolles" | tee -a /etc/vsftpd.userlist
COPY ./tools/vsftpd.conf /etc/vsftpd.conf



EXPOSE 21
EXPOSE 30000-30009

CMD [ "vsftpd", "/etc/vsftpd.conf"]