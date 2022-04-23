FROM debian:buster

# Installation Source https://www.digitalocean.com/community/tutorials/how-to-set-up-vsftpd-for-a-user-s-directory-on-debian-10

RUN apt-get update && \
	apt-get install vsftpd -y && \
	apt-get install openssl -y

COPY ./tools/vsftpd.conf vsftpd.conf
COPY ./tools/start.sh start.sh
# RUN 
# RUN service vsftpd start
# RUN adduser ybolles
# RUN echo "ybolles:ybolles" | chpasswd
# RUN mkdir -p /home/ybolles/ftp 
# RUN chown ybolles:ybolles /home/ybolles/ftp
# RUN chmod a-w /home/ybolles/ftp
# RUN mkdir /home/ybolles/ftp/files
# RUN echo "ybolles" | tee -a /etc/vsftpd.userlist



EXPOSE 21
EXPOSE 30000-30009

CMD [ "sh", "start.sh"]