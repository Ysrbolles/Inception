echo "####################################"
echo "#                                  #"
echo "#     Backup Mariadb database      #" 
echo "#                                  #"
echo "####################################"

backup_directory="/var/lib/mysql"
backup_dist="/data/backup"


#tar = Tape Archive tool for compression
#Creating same backup tar file for all specified folders




while true;
do
    # take the current date
    time=$(date '+%Y-%m-%d_%H-%M-%S')
    
    # Create new folder with the current date
    backup_folder="backup_${time}"
    
    # Copy the data from "db-data" to the backup Folder
    echo "backup mariadb server at $time in $backup_dist"
    tar -cvf "${backup_dist}/${backup_folder}.tar" ${backup_directory}
    
    # sleep for 7 minutes
    sleep 7m
done



