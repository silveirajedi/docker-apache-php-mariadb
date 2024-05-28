# Use a especific version of php and apache image
FROM php:8.3-apache

# Config the env timezone
ENV timezone=America/Sao_Paulo

# Update system and install git, zip, php libs and exiftool, then clear cache
RUN apt-get update && \
    apt-get install -y git --no-install-recommends && \
    apt-get install -y zip --no-install-recommends && \
    apt-get install -y build-essential libssl-dev zlib1g-dev libpng-dev libjpeg-dev libfreetype6-dev --no-install-recommends && \
    apt-get install -y exiftool --no-install-recommends && \
    rm -rf /var/lib/lists/*

# Install docker php extensions
RUN docker-php-ext-install pdo pdo_mysql && \
    docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/ && docker-php-ext-install gd && \
    docker-php-ext-configure exif && docker-php-ext-install exif

# Config ln for timezone
RUN ln -snf /usr/share/zoneinfo/${timezone} /etc/localtime && echo ${timezone} > /etc/timezone

# Install xDebug
RUN pecl install xdebug

# Install Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php && rm composer-setup.php && mv composer.phar /usr/local/bin/composer && chmod a+x /usr/local/bin/composer