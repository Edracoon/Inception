FROM alpine:3.13

RUN apk add wget \
			php \
			php-fpm \
			php-common \
			php-cli \
			php-json \
			php-opcache \
			php-mbstring \
			php-zip \
			php-gd \
			php-curl \
			php-intl \
			php-soap \
			php-xml \
			php-xmlrpc

COPY wordpress_install.sh ./
COPY wp-config.php ./

CMD sh wordpress_install.sh

EXPOSE 9000