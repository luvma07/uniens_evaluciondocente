# docker build --no-cache --tag ileonelperea/uniens-evaluaciondocente:1.0.0 . && docker push ileonelperea/uniens-evaluaciondocente:1.0.0
FROM php:7.3-apache

# Install packages
RUN apt-get update && apt-get install -y \
    git \
    zip \
    curl \
    sudo \
    unzip \
    libicu-dev \
    libbz2-dev \
    libpng-dev \
    libjpeg-dev \
    libmcrypt-dev \
    libreadline-dev \
    libfreetype6-dev \
    g++ \
    vim

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Apache configuration
ENV APACHE_DOCUMENT_ROOT=/var/www/html
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
RUN a2enmod rewrite headers

# Common PHP Extensions
RUN docker-php-ext-install \
    bz2 \
    intl \
    iconv \
    bcmath \
    opcache \
    calendar \
    pdo_mysql

# Ensure PHP logs are captured by the container
ENV LOG_CHANNEL=stderr

# Configure timezone
ENV TZ=America/Mexico_City
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Gets copied to /var/www/html/ on the container's initial startup
COPY www /var/www/html
COPY connection.php /var/www/html/controllers/connection.php
COPY php.ini-production /usr/local/etc/php/php.ini

RUN chown www-data:www-data -R /var/www/html/
COPY .htaccess /var/www/html/.htaccess

# forward request and error logs to docker log collector
# RUN ln -sf /dev/stdout /var/log/apache2/access_log \
#     && ln -sf /dev/stderr /var/log/apache2/error.log
