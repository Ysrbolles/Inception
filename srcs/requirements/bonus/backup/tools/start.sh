echo "####################################"
echo "#                                  #"
echo "#     Backup Mariadb database      #" 
echo "#                                  #"
echo "####################################"

backup_directory= "/var/lib/mysql"
backup_dist= "/data/backup"


# echo "Backing up $backup_directory to $backup_dist"
# cp -r $backup_directory $backup_dist

#!/bin/bash

#Specify folders whose backup is to be taken in variables
f1="/home/nishkarshraj/Desktop/Automation-using-Shell-Scripts"
f2="/home/nishkarshraj/Desktop/Computer-Graphics"
f3="/home/nishkarshraj/Desktop/HelloWorld"

#tar = Tape Archive tool for compression
#Creating same backup tar file for all specified folders
tar -cvf "$backup_dist/backup.tar" "$backup_directory"

#Go to the backup folder location
cd "$backup_dist"

#Show the size of the folder
du -sh

/usr/bin/cadvisor -logtostderr --port=7000

