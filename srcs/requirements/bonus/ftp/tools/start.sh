# #!/bin/sh

# adduser $FTPS_USER
# echo "ybolles:ybolles" | chpasswd
# mkdir -p /home/ybolles/ftp
# chown ybolles:ybolles /home/ybolles/ftp
# chmod a-w /home/ybolles/ftp
# echo "ybolles" | tee -a /etc/vsftpd.userlist
# service vsftpd restart

# exec vsftpd /etc/vsftpd.conf