FROM php:7.4-fpm-alpine

MAINTAINER adi.mihaila@outlook.com

USER :33

RUN apk add --virtual build-dependencies build-base libzip-dev openssl-dev autoconf

RUN set -uex; \
    umask 0002; \
    curl --silent --show-error https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && chmod o+x /usr/local/bin/composer

ENV COMPOSER_HOME=/tmp/composer

WORKDIR /var/www/html

COPY . .

CMD ["php-fpm", "-F"]