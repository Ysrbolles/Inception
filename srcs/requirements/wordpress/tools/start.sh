# Copy wordpress files to the volume
cp -r redis-cache/ /var/www/html/wordpress/wp-content/plugins/


php-fpm7.3 --nodaemonize