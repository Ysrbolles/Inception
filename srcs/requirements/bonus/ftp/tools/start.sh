#!/bin/bsh

# service vsftpd start
echo "$FTPS_USER" | adduser $FTPS_USER
echo "$FTPS_USER:$FTPS_USER" | chpasswd
mkdir -p /home/ybolles/ftp
chown $FTPS_USER:$FTPS_USER /home/ybolles/ftp
mkdir -p /home/ybolles/ftp/files
chown $FTPS_USER:$FTPS_USER /home/ybolles/ftp/files
chmod a-w /home/ybolles/ftp
echo "$FTPS_USER" | tee -a /etc/vsftpd.userlist
# rm -rf /etc/vsftpd.conf
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem -subj "/C=MA/ST=KHOURIBGA/L=Kkouribga/O=1337/OU=My Department/CN=localhost:21"
# echo "$FTPS_USER hello #################################################################"
cp vsftpd.conf /etc/vsftpd.conf
service vsftpd restart



exec vsftpd /etc/vsftpd.conf