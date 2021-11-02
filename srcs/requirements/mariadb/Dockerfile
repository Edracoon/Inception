FROM alpine:3.13

RUN apk update
RUN apk upgrade

# Installation de MariaDB-client et MariaDB-server
RUN apk add openrc mariadb mariadb-common mariadb-client mariadb-server-utils

# my config
RUN rm -f /etc/my.cnf.d/mariadb-server.cnf
RUN rm -f /etc/my.cnf.d/my.cnf
COPY ./conf/my.cnf /etc/my.cnf.d/my.cnf

RUN mkdir -p /run/mysqld
RUN mkdir -p /var/lib/mysql

# definir l'owner du dossier mysql (par defaut user = mysql et group = mysql)
RUN chown -R mysql:mysql /var/lib/mysql

COPY ./conf/launch.sh /

# demonize containers on PID1
CMD ["sh", "launch.sh"]
#CMD ["mysqld", "--user=root"]

# Mariadb default port
EXPOSE 3306
