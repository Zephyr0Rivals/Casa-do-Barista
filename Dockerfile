FROM php:8.4-fpm


RUN docker-php-ext-install pdo pdo_mysql

RUN apt-get update && apt-get install -y \
    git curl libpng-dev libonig-dev libxml2-dev zip unzip

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

COPY docker/php/uploads.ini /usr/local/etc/php/conf.d/uploads.ini


