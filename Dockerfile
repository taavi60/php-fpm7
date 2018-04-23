FROM php:7.2.4-fpm-alpine3.7
RUN apk update && apk add libpng-dev gettext-dev libmcrypt-dev php7-imagick && docker-php-ext-install pdo_mysql gettext mysqli gd && apk del gcc make && rm -rf /var/cache/apk/*
COPY php.ini /usr/local/etc/php/php.ini
