FROM php:5.6.31-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev \
    libzip-dev mysql-client libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && pecl install zip
    && docker-php-ext-enable imagick \
    && docker-php-ext-install zip
    && docker-php-ext-install mcrypt pdo_mysql zip\
    && docker-php-ext-configure zip