FROM php:8.3-apache

ENV timezone=America/Sao_Paulo

RUN apt-get update && \
    apt-get install -y git && \
    apt-get install -y zip && \
    apt-get install -y build-essential libssl-dev zlib1g-dev libpng-dev libjpeg-dev libfreetype6-dev && \
    apt-get install -y exiftool && \
    docker-php-ext-install pdo pdo_mysql && \
    docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/ && docker-php-ext-install gd && \
    docker-php-ext-configure exif && docker-php-ext-install exif && \
    ln -snf /usr/share/zoneinfo/${timezone} /etc/localtime && echo ${timezone} > /etc/timezone && \
    pecl install xdebug && \
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php && rm composer-setup.php && mv composer.phar /usr/local/bin/composer && chmod a+x /usr/local/bin/composer