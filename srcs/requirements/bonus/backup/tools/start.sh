echo "####################################"
echo "#                                  #"
echo "#     Backup Mariadb database      #" 
echo "#                                  #"
echo "####################################"

backup_directory= "/var/lib/mysql"
backup_dist= "/data/backup"


#tar = Tape Archive tool for compression
#Creating same backup tar file for all specified folders
tar -cvf "$backup_dist/backup.tar" "$backup_directory"

#Go to the backup folder location
cd "$backup_dist"

#Show the size of the folder
du -sh

/usr/bin/cadvisor -logtostderr --port=7000

