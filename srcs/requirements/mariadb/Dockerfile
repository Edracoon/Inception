FROM alpine:3.13

RUN apk update
RUN apk add mariadb



CMD ["mysqld", "--user=root"]

# Mariadb default port
EXPOSE 3306