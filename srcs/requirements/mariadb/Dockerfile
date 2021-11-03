FROM alpine:3.13

RUN apk update
RUN apk upgrade

# Installation de MariaDB-client et MariaDB-server
RUN apk add openrc mariadb mariadb-common mariadb-client mariadb-server-utils

# my config
RUN rm -f /etc/my.cnf.d/mariadb-server.cnf
RUN rm -f /etc/my.cnf.d/my.cnf
# a deux endroits
COPY ./conf/my.cnf /etc/my.cnf.d/my.cnf
COPY ./conf/my.cnf /etc/mysql/my.cnf
RUN chmod 0444 /etc/my.cnf.d/my.cnf
RUN chmod 0444 /etc/mysql/my.cnf

# directories
RUN mkdir -p /run/mysqld
RUN mkdir -p /var/lib/mysql

# definir l'owner du dossier mysql (par defaut user = mysql et group = mysql)
RUN chown -R mysql /var/lib/mysql
RUN chmod 777 /var/lib/mysql

COPY ./conf/launch.sh /

# demonize containers on PID1
CMD ["sh", "launch.sh"]

# Mariadb default port
EXPOSE 3306
