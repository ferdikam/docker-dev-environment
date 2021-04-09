FROM php:7.4-fpm

RUN apt update && apt install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev libxml2-dev libcurl4-gnutls-dev


RUN docker-php-ext-install -j$(nproc) mysqli

WORKDIR /var/www

EXPOSE 9000
