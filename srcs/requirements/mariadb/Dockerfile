FROM alpine:3.13

RUN apk update
RUN apk add mariadb

# Pour faire tourner le container
CMD ["mysqld", "--user=root"]
# ["--user=root"]
# RUN mysql -u root -p

# Mariadb default port
EXPOSE 3306