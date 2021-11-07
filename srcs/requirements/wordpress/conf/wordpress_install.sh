sleep 5

# Installation de Wordpress CLI pour la configuration depuis le server en SSH
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# le rendre executable puis le mettre dans le PATH des executables
chmod +x wp-cli.phar
mv -f wp-cli.phar /usr/local/bin/wp

chmod 777 /var/www/html

# moove ma config
mv /wp-config.php /var/www/html

# Telechargement de WordPress via le CLI (les files de base de Wordpress) en precisant le path
wp core download --allow-root
#--path=`/var/www/html`

# Le --path= ne fonctionne pas ? on le fait à la main pour le moment :
# delete les conf de base
rm -f wp-config.php
rm -f wp-config-sample.php
#moove le content de wordpress dans html
mv -f wp-* /var/www/html
mv -f *.php /var/www/html

# On lance l'installation de WordPress (Celle que l'on a normalement en se connectant sur localhost) avec les informations de l'admin
wp core install --allow-root --url=$SITE_URL --title=$TITLE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL

exec php-fpm7 -F
