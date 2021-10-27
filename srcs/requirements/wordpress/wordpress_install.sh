wget https://wordpress.org/latest.tar.gz
tar xvf latest.tar.gz
# creation du dossier wordpress
mv ./wordpress /var/www/localhost/
mv ./wp-config.php /var/www/localhost/wordpress
rm latest.tar.gz

# Launch
service php7.3-fpm start