FROM alpine:3.13

RUN apk --update add wget \
	php7 php7-fpm php-mysqli

COPY ./conf/wordpress_install.sh ./
COPY ./conf/wp-config.php ./

RUN mkdir -p /var/www/html

# Set le user et le groupe pour wordpress
RUN addgroup -g 82 -S www-data
RUN adduser -u 82 -D -S -G www-data www-data

RUN chmod 777 -R /var/www/html

RUN chown -R www-data:www-data /var/www/html

RUN rm -f /etc/php7/php-fpm.d/www.conf
COPY ./conf/www.conf /etc/php7/php-fpm.d/www.conf

CMD ["sh", "wordpress_install.sh"]

EXPOSE 9000
