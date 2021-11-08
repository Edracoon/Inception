# Inception

-- nginx --
webserver

-- wordpress --
gestion site web et base de données

-- php-fpm --
Fast Process Manager, il va servir de daemon sur le PID 1 et va faire tourner le container en attendant des requetes
CGI ( celles de nginx ).
Permet aussi l'interpretation des fichiers .php

-- mariadb --
base de données
