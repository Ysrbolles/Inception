FROM debian:buster

RUN apt-get update && \
    apt-get install vsftpd -y && \
    apt-get install openssl -y

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout //etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem -subj "/C=MA/ST=KHOURIBGA/L=Kkouribga/O=1337/OU=My Department/CN=Inception"
RUN service vsftpd start
RUN echo -e "" | adduser ftpuser     
CMD [ "cat"]
