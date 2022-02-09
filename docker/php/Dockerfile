FROM php:8.1-fpm

RUN apt-get update

RUN docker-php-ext-install mysqli pdo_mysql
RUN apt-get install -y libonig-dev
RUN docker-php-ext-install  mbstring

RUN apt-get install -y zlib1g-dev
RUN apt-get install -y libzip-dev
RUN docker-php-ext-install zip

RUN apt-get install -y vim

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

RUN docker-php-ext-install opcache

RUN apt-get update && apt-get install -y cron
RUN echo "* * * * * root /usr/local/bin/php /var/www/laravel/artisan schedule:run >> /dev/null 2>&1" >> /etc/cron.d/mycron

RUN echo memory_limit = -1 >  /usr/local/etc/php/php.ini

WORKDIR /var/www/html/laravel