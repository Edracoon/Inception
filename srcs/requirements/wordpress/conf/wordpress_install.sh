sleep 5

wget https://wordpress.org/latest.tar.gz
tar xvf *.tar.gz

cp -rf /wordpress/* /var/www/html

rm -f /var/www/html/wp-config.php
rm -f /var/www/html/wp-config-sample.php

mv /wp-config.php /var/www/html


rm *.tar.gz
rm -rf /wordpress

exec php-fpm7 -F
